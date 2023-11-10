import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common_topdbd/model/last_login_time_user/last_login_time_user.dart';
import 'package:common_topdbd/model/last_login_time_user/list_last_login_time_user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class InsertEELastLoginTimeUserEEFromUniqueIdByUserEEParameterFirebaseFirestoreService<T extends LastLoginTimeUser,Y extends ListLastLoginTimeUser<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> insertLastLoginTimeUserFromUniqueIdByUserParameterFirebaseFirestoreService(String uniqueIdByUser)
  async {
    try {
      final documentByLastLoginTimeUserWhereAdding = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.lastLoginTimeUser)
          .add({
        KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQQUniqueIdByUser : uniqueIdByUser,
        KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQQLastLoginTime : FieldValue.serverTimestamp()
          });
      final documentByLastLoginTimeUser = await documentByLastLoginTimeUserWhereAdding?.get();
      if(!(documentByLastLoginTimeUser?.exists ?? false)) {
        return Result<T>.exception(LocalException(this,EnumGuilty.user,KeysExceptionUtility.insertEELastLoginTimeUserEEFromUniqueIdByUserEEParameterFirebaseFirestoreService));
      }
      return Result<T>.success(LastLoginTimeUser(
          documentByLastLoginTimeUser?.data()?[KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQQUniqueIdByUser] ?? "",
          (documentByLastLoginTimeUser?.data()?[KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQQLastLoginTime]).toDate() ?? DateTime.now()) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}