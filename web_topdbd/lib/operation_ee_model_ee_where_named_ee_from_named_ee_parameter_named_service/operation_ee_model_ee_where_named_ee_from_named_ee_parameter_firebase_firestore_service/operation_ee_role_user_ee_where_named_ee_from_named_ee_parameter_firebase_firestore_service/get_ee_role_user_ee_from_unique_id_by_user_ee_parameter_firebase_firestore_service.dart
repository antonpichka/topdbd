import 'package:common_topdbd/model/role_user/list_role_user.dart';
import 'package:common_topdbd/model/role_user/role_user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class GetEERoleUserEEFromUniqueIdByUserEEParameterFirebaseFirestoreService<T extends RoleUser,Y extends ListRoleUser<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> getRoleUserFromUniqueIdByUserParameterFirebaseFirestoreService(String uniqueIdByUser)
  async {
    try {
      final documentByRoleUser = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.roleUser)
          .where(KeysFirebaseFirestoreServiceUtility.roleUserQQUniqueIdByUser,isEqualTo: uniqueIdByUser)
          .limit(1)
          .get();
      if((documentByRoleUser?.size ?? 0) <= 0) {
        return Result<T>.exception(LocalException(this,EnumGuilty.user,KeysExceptionUtility.getEERoleUserEEFromUniqueIdByUserEEParameterFirebaseFirestoreService));
      }
      return Result<T>.success(RoleUser(
          documentByRoleUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.roleUserQQUniqueIdByUser],
          documentByRoleUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.roleUserQQIsAdmin],
          documentByRoleUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.roleUserQQIsTest]) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}