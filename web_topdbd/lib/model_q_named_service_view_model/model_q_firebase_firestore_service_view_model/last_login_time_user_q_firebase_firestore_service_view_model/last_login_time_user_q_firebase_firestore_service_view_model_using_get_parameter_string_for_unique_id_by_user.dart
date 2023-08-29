import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common_topdbd/model/last_login_time_user/last_login_time_user.dart';
import 'package:common_topdbd/model/last_login_time_user/list_last_login_time_user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/i_get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class LastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser<T extends LastLoginTimeUser,Y extends ListLastLoginTimeUser<T>>
    implements IGetModelFromNamedServiceParameterNamedDataSource<T,String>
{
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<T> getLastLoginTimeUserFromFirebaseFirestoreServiceParameterStringDS(String parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceParameterNamedDS(String parameter)
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
        return LastLoginTimeUser.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.lastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUserQWhereLocalExceptionGuiltyUserNoExists)) as T;
      }
      return LastLoginTimeUser.success(
          documentByLastLoginTimeUser?.data()?[KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQUniqueIdByUser],
          documentByLastLoginTimeUser?.data()?[KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQLastLoginTime]) as T;
    } catch(e) {
      return LastLoginTimeUser.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}