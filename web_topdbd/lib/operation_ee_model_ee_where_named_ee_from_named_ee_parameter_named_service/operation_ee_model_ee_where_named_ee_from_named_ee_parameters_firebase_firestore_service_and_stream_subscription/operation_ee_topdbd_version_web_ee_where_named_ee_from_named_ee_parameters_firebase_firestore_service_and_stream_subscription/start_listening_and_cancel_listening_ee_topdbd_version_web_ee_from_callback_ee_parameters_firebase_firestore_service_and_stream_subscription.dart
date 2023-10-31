import 'dart:async';
import 'package:common_topdbd/model/topdbd_version_web/list_topdbd_version_web.dart';
import 'package:common_topdbd/model/topdbd_version_web/topdbd_version_web.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class StartListeningAndCancelListeningEETOPDBDVersionWebEEFromCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription<T extends TOPDBDVersionWeb,Y extends ListTOPDBDVersionWeb<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListeningTOPDBDVersionWebFromCallbackParametersFirebaseFirestoreServiceAndStreamSubscription(Function(Result<T>) callback) {
    try {
      streamSubscription = firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.TOPDBDVersionWeb)
          .limit(1)
          .snapshots()
          .listen((event) {
            final documentByTOPDBDVersionWeb = event.docs[0];
            callback(Result<T>.success(TOPDBDVersionWeb(documentByTOPDBDVersionWeb.data()[KeysFirebaseFirestoreServiceUtility.TOPDBDVersionWebQQVersion]) as T));
          });
    } catch(e) {
      callback(Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString())));
    }
  }

  void cancelListeningTOPDBDVersionWebParameterStreamSubscription() {
    streamSubscription?.cancel();
  }
}