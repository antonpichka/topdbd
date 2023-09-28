import 'package:common_topdbd/model/role_user/list_role_user.dart';
import 'package:common_topdbd/model/role_user/role_user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class RoleUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser<T extends RoleUser,Y extends ListRoleUser<T>> extends BaseGetModelFromNamedServiceParameterNamedDataSource<T,String> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> getRoleUserFromFirebaseFirestoreServiceParameterStringDS(String parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<T>> getModelFromNamedServiceParameterNamedDS(String parameter)
  async {
    try {
      final documentByRoleUser = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.roleUser)
          .where(KeysFirebaseFirestoreServiceUtility.roleUserQUniqueIdByUser,isEqualTo: parameter)
          .limit(1)
          .get();
      if((documentByRoleUser?.size ?? 0) <= 0) {
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.roleUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUserQWhereLocalExceptionGuiltyUserNoExists));
      }
      return Result<T>.success(RoleUser(
          documentByRoleUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.roleUserQUniqueIdByUser],
          documentByRoleUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.roleUserQIsAdmin],
          documentByRoleUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.roleUserQIsTest]) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }

}