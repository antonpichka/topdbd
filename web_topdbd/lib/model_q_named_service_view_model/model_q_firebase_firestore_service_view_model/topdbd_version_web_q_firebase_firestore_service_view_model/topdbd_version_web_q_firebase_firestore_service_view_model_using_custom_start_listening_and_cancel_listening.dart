import 'dart:async';
import 'package:common_topdbd/model/topdbd_version_web/list_topdbd_version_web.dart';
import 'package:common_topdbd/model/topdbd_version_web/topdbd_version_web.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class TOPDBDVersionWebQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening<T extends TOPDBDVersionWeb,Y extends ListTOPDBDVersionWeb<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListening(Function(Result<T> resultTOPDBDVersionWeb) callback) {
    try {
      streamSubscription = firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.TOPDBDVersionWeb)
          .limit(1)
          .snapshots()
          .listen((event) {
            final documentByTOPDBDVersionWeb = event.docs[0];
            callback(Result<T>.success(TOPDBDVersionWeb(documentByTOPDBDVersionWeb.data()[KeysFirebaseFirestoreServiceUtility.TOPDBDVersionWebQVersion]) as T));
          });
    } catch(e) {
      callback(Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())));
    }
  }

  void cancelListening() {
    streamSubscription?.cancel();
  }
}