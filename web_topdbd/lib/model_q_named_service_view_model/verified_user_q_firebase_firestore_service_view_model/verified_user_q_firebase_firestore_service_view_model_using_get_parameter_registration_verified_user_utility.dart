import 'package:common_topdbd/model/verified_user/list_verified_user.dart';
import 'package:common_topdbd/model/verified_user/verified_user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:common_topdbd/named_utility/registration_verified_user_utility.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/i_get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/model_q_named_service_view_model/named_service/firebase_firestore_service.dart';

base class VerifiedUserQFirebaseFirestoreServiceViewModelUsingGetParameterRegistrationVerifiedUserUtility<T extends VerifiedUser,Y extends ListVerifiedUser<T>>
    implements IGetModelFromNamedServiceParameterNamedDataSource<T,RegistrationVerifiedUserUtility>
{
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<T> getVerifiedUserFromFirebaseFirestoreServiceParameterRegistrationVerifiedUserUtilityDS(RegistrationVerifiedUserUtility parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceParameterNamedDS(RegistrationVerifiedUserUtility parameter)
  async {
    try {
      final documentByVerifiedUserWhereAdding = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.verifiedUser)
          .add({
        KeysFirebaseFirestoreServiceUtility.verifiedUserQUniqueIdByUser : parameter.uniqueIdByUser,
        KeysFirebaseFirestoreServiceUtility.verifiedUserQIsVerifiedUser : parameter.isVerifiedUser,
          });
      final documentByVerifiedUser = await documentByVerifiedUserWhereAdding?.get();
      if(!(documentByVerifiedUser?.exists ?? false)) {
        return VerifiedUser.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.verifiedUserQFirebaseFirestoreServiceViewModelUsingGetParameterRegistrationVerifiedUserUtilityQWhereLocalExceptionGuiltyUserNoExists)) as T;
      }
      return VerifiedUser.success(
          documentByVerifiedUser?.data()?[KeysFirebaseFirestoreServiceUtility.verifiedUserQUniqueIdByUser],
          documentByVerifiedUser?.data()?[KeysFirebaseFirestoreServiceUtility.verifiedUserQIsVerifiedUser]) as T;
    } catch(e) {
      return VerifiedUser.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}