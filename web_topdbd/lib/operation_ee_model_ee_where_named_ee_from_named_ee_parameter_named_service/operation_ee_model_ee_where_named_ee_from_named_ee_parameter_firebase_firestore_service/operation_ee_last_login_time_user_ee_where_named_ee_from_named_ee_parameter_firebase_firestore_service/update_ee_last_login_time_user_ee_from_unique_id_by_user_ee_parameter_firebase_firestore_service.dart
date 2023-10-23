import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common_topdbd/model/last_login_time_user/last_login_time_user.dart';
import 'package:common_topdbd/model/last_login_time_user/list_last_login_time_user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class UpdateEELastLoginTimeUserEEFromUniqueIdByUserEEParameterFirebaseFirestoreService<T extends LastLoginTimeUser,Y extends ListLastLoginTimeUser<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> updateLastLoginTimeUserFromUniqueIdByUserParameterFirebaseFirestoreService(String uniqueIdByUser)
  async {
    try {
      final listDocumentByLastLoginTimeUser = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.lastLoginTimeUser)
          .where(KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQUniqueIdByUser,isEqualTo: uniqueIdByUser)
          .limit(1)
          .get();
      if((listDocumentByLastLoginTimeUser?.size ?? 0) <= 0) {
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.updateEELastLoginTimeUserEEFromUniqueIdByUserEEParameterFirebaseFirestoreService));
      }
      final firstItemDocumentByLastLoginTimeUser = listDocumentByLastLoginTimeUser?.docs[0];
      await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.lastLoginTimeUser)
          .doc(firstItemDocumentByLastLoginTimeUser?.id)
          .update({
        KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQUniqueIdByUser : firstItemDocumentByLastLoginTimeUser?.data()[KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQUniqueIdByUser],
        KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQLastLoginTime : FieldValue.serverTimestamp(),
      });
      final listDocumentByLastLoginTimeUserTWO = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.lastLoginTimeUser)
          .where(KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQUniqueIdByUser,isEqualTo: firstItemDocumentByLastLoginTimeUser?.data()[KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQUniqueIdByUser])
          .limit(1)
          .get();
      if((listDocumentByLastLoginTimeUserTWO?.size ?? 0) <= 0) {
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.updateEELastLoginTimeUserEEFromUniqueIdByUserEEParameterFirebaseFirestoreService));
      }
      return Result<T>.success(LastLoginTimeUser(
          listDocumentByLastLoginTimeUserTWO?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQUniqueIdByUser],
          (listDocumentByLastLoginTimeUserTWO?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQLastLoginTime]).toDate()) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}