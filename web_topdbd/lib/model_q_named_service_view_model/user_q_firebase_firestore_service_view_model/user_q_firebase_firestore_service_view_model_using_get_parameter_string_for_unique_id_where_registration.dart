import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common_topdbd/model/user/list_user.dart';
import 'package:common_topdbd/model/user/user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/i_get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/model_q_named_service_view_model/named_service/firebase_firestore_service.dart';

base class UserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdWhereRegistration<T extends User,Y extends ListUser<T>>
    implements IGetModelFromNamedServiceParameterNamedDataSource<T,String>
{
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<T> getUserFromFirebaseFirestoreServiceParameterStringDS(String parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceParameterNamedDS(String parameter)
  async {
    try {
      final documentByUserWhereAdding = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.user)
          .add({
        KeysFirebaseFirestoreServiceUtility.userQUniqueId : parameter,
        KeysFirebaseFirestoreServiceUtility.userQCreationTime : FieldValue.serverTimestamp()
          });
      final documentByUser = await documentByUserWhereAdding?.get();
      if(!(documentByUser?.exists ?? false)) {
        return User.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.userQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdWhereRegistrationQWhereLocalExceptionGuiltyUserNoExists)) as T;
      }
      return User.success(
          documentByUser?.data()?[KeysFirebaseFirestoreServiceUtility.userQUniqueId],
          documentByUser?.data()?[KeysFirebaseFirestoreServiceUtility.userQCreationTime]) as T;
    } catch(e) {
      return User.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}