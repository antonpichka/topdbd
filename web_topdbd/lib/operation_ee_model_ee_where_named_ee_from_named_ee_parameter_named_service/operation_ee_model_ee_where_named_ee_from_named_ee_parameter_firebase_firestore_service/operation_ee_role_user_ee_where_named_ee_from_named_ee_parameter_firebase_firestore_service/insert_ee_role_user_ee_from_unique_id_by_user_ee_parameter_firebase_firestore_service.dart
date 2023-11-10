import 'package:common_topdbd/model/role_user/list_role_user.dart';
import 'package:common_topdbd/model/role_user/role_user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class InsertEERoleUserEEFromUniqueIdByUserEEParameterFirebaseFirestoreService<T extends RoleUser,Y extends ListRoleUser<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> insertRoleUserFromUniqueIdByUserParameterFirebaseFirestoreService(String uniqueIdByUser)
  async {
    try {
      final documentByRoleUserWhereAdding = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.roleUser)
          .add({
        KeysFirebaseFirestoreServiceUtility.roleUserQQUniqueIdByUser : uniqueIdByUser,
        KeysFirebaseFirestoreServiceUtility.roleUserQQIsAdmin : false,
        KeysFirebaseFirestoreServiceUtility.roleUserQQIsTest : false,
      });
      final documentByRoleUser = await documentByRoleUserWhereAdding?.get();
      if(!(documentByRoleUser?.exists ?? false)) {
        return Result<T>.exception(LocalException(this,EnumGuilty.user,KeysExceptionUtility.insertEERoleUserEEFromUniqueIdByUserEEParameterFirebaseFirestoreService));
      }
      return Result<T>.success(RoleUser(
          documentByRoleUser?.data()?[KeysFirebaseFirestoreServiceUtility.roleUserQQUniqueIdByUser] ?? "",
          documentByRoleUser?.data()?[KeysFirebaseFirestoreServiceUtility.roleUserQQIsAdmin] ?? false,
          documentByRoleUser?.data()?[KeysFirebaseFirestoreServiceUtility.roleUserQQIsTest] ?? false) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}