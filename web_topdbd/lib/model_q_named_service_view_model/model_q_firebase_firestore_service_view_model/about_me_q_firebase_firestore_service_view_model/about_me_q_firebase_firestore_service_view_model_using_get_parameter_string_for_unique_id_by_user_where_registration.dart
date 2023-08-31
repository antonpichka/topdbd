import 'package:common_topdbd/model/about_me/about_me.dart';
import 'package:common_topdbd/model/about_me/list_about_me.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/i_get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class AboutMeQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUserWhereRegistration<T extends AboutMe,Y extends ListAboutMe<T>>
    implements IGetModelFromNamedServiceParameterNamedDataSource<T,String>
{
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<T> getAboutMeFromFirebaseFirestoreServiceParameterStringDS(String parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceParameterNamedDS(String parameter)
  async {
    try {
      final documentByAboutMeWhereAdding = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.aboutMe)
          .add({
        KeysFirebaseFirestoreServiceUtility.aboutMeQUniqueIdByUser : parameter,
        KeysFirebaseFirestoreServiceUtility.aboutMeQCodeDBD : "",
        KeysFirebaseFirestoreServiceUtility.aboutMeQCodeSteam : ""
          });
      final documentByAboutMe = await documentByAboutMeWhereAdding?.get();
      if(!(documentByAboutMe?.exists ?? false)) {
        return AboutMe.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.aboutMeQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUserWhereRegistrationQWhereLocalExceptionGuiltyUserNoExists)) as T;
      }
      return AboutMe.success(
          documentByAboutMe?.data()?[KeysFirebaseFirestoreServiceUtility.aboutMeQUniqueIdByUser],
          documentByAboutMe?.data()?[KeysFirebaseFirestoreServiceUtility.aboutMeQCodeDBD],
          documentByAboutMe?.data()?[KeysFirebaseFirestoreServiceUtility.aboutMeQCodeSteam]) as T;
    } catch(e) {
      return AboutMe.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}