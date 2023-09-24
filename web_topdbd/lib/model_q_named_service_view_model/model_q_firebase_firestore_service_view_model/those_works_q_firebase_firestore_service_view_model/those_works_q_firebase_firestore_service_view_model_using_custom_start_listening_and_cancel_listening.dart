import 'dart:async';
import 'package:common_topdbd/model/those_works/list_those_works.dart';
import 'package:common_topdbd/model/those_works/those_works.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class ThoseWorksQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening<T extends ThoseWorks,Y extends ListThoseWorks<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListening(Function(Result<T> resultThoseWorks) callback) {
    try {
      streamSubscription = firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.thoseWorks)
          .limit(1)
          .snapshots()
          .listen((event) {
            final documentByThoseWorks = event.docs[0];
            callback(Result<T>.success(ThoseWorks(documentByThoseWorks.data()[KeysFirebaseFirestoreServiceUtility.thoseWorksQIsThoseWorks]) as T));
          });
    } catch(e) {
      callback(Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())));
    }
  }

  void cancelListening() {
    streamSubscription?.cancel();
  }
}