import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common_topdbd/model/last_login_time_user/last_login_time_user.dart';
import 'package:common_topdbd/model/last_login_time_user/list_last_login_time_user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class LastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUser<T extends LastLoginTimeUser,Y extends ListLastLoginTimeUser<T>> extends BaseInsertModelToNamedServiceParameterNamedDataSource<T,String> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> insertLastLoginTimeUserToFirebaseFirestoreServiceParameterStringDS(String parameter) {
    return insertModelToNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<T>> insertModelToNamedServiceParameterNamedDS(String parameter)
  async {
    try {
      final documentByLastLoginTimeUserWhereAdding = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.lastLoginTimeUser)
          .add({
        KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQUniqueIdByUser : parameter,
        KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQLastLoginTime : FieldValue.serverTimestamp()
          });
      final documentByLastLoginTimeUser = await documentByLastLoginTimeUserWhereAdding?.get();
      if(!(documentByLastLoginTimeUser?.exists ?? false)) {
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.lastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUserQWhereLocalExceptionGuiltyUserNoExists));
      }
      return Result<T>.success(LastLoginTimeUser(
          documentByLastLoginTimeUser?.data()?[KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQUniqueIdByUser],
          documentByLastLoginTimeUser?.data()?[KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQLastLoginTime]) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}