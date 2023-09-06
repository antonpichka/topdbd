import 'package:common_topdbd/model/role_user/list_role_user.dart';
import 'package:common_topdbd/model/role_user/role_user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class RoleUserQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUser<T extends RoleUser,Y extends ListRoleUser<T>> extends BaseInsertModelToNamedServiceParameterNamedDataSource<T,String> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> insertRoleUserToFirebaseFirestoreServiceParameterStringDS(String parameter) {
    return insertModelToNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<T>> insertModelToNamedServiceParameterNamedDS(String parameter)
  async {
    try {
      final documentByRoleUserWhereAdding = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.roleUser)
          .add({
        KeysFirebaseFirestoreServiceUtility.roleUserQUniqueIdByUser : parameter,
        KeysFirebaseFirestoreServiceUtility.roleUserQIsAdmin : false,
        KeysFirebaseFirestoreServiceUtility.roleUserQIsTest : false,
          });
      final documentByRoleUser = await documentByRoleUserWhereAdding?.get();
      if(!(documentByRoleUser?.exists ?? false)) {
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.roleUserQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUserQWhereLocalExceptionGuiltyUserNoExists));
      }
      return Result<T>.success(RoleUser(
          documentByRoleUser?.data()?[KeysFirebaseFirestoreServiceUtility.roleUserQUniqueIdByUser],
          documentByRoleUser?.data()?[KeysFirebaseFirestoreServiceUtility.roleUserQIsAdmin],
          documentByRoleUser?.data()?[KeysFirebaseFirestoreServiceUtility.roleUserQIsTest]) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}