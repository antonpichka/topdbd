import 'dart:async';
import 'package:common_topdbd/model/verified_user/list_verified_user.dart';
import 'package:common_topdbd/model/verified_user/verified_user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class VerifiedUserQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening<T extends VerifiedUser,Y extends ListVerifiedUser<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  Future<void> startListening(String parameter,Function(Result<T> resultVerifiedUser) callback)
  async {
    try {
      final listDocumentByVerifiedUser = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.verifiedUser)
          .where(KeysFirebaseFirestoreServiceUtility.verifiedUserQUniqueIdByUser,isEqualTo: parameter)
          .limit(1)
          .get();
      if((listDocumentByVerifiedUser?.size ?? 0) <= 0) {
        callback(Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.verifiedUserQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListeningQWhereLocalExceptionGuiltyUserNoExists)));
        return;
      }
      final itemOneDocumentByVerifiedUser = listDocumentByVerifiedUser?.docs[0];
      streamSubscription = firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.verifiedUser)
          .doc(itemOneDocumentByVerifiedUser!.id)
          .snapshots()
          .listen((event) {
            final documentByVerifiedUser = event;
            callback(Result<T>.success(VerifiedUser(
                documentByVerifiedUser.data()![KeysFirebaseFirestoreServiceUtility.verifiedUserQUniqueIdByUser],
                documentByVerifiedUser.data()![KeysFirebaseFirestoreServiceUtility.verifiedUserQIsVerifiedUser]) as T));
          });
    } catch(e) {
      callback(Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())));
    }
  }

  void cancelListening() {
    streamSubscription?.cancel();
  }
}