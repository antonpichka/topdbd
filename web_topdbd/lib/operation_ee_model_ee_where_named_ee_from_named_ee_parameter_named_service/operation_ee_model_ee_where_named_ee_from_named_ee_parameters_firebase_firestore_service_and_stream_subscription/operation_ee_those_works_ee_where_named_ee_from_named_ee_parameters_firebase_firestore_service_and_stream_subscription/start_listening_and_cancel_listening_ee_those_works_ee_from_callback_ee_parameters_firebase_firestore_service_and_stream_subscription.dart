import 'dart:async';
import 'package:common_topdbd/model/those_works/list_those_works.dart';
import 'package:common_topdbd/model/those_works/those_works.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class StartListeningAndCancelListeningEEThoseWorksEEFromCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription<T extends ThoseWorks,Y extends ListThoseWorks<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListeningThoseWorksFromCallbackParametersFirebaseFirestoreServiceAndStreamSubscription(Function(Result<T>) callback) {
    try {
      streamSubscription = firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.thoseWorks)
          .limit(1)
          .snapshots()
          .listen((event) {
            final documentByThoseWorks = event.docs[0];
            callback(Result<T>.success(ThoseWorks(documentByThoseWorks.data()[KeysFirebaseFirestoreServiceUtility.thoseWorksQQIsThoseWorks]) as T));
          });
    } catch(e) {
      callback(Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString())));
    }
  }

  void cancelListeningThoseWorksParameterStreamSubscription() {
    streamSubscription?.cancel();
  }
}