import 'package:common_topdbd/model/about_me/about_me.dart';
import 'package:common_topdbd/model/about_me/list_about_me.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class AboutMeQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUser<T extends AboutMe,Y extends ListAboutMe<T>> extends BaseInsertModelToNamedServiceParameterNamedDataSource<T,String> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> insertAboutMeToFirebaseFirestoreServiceParameterStringDS(String parameter) {
    return insertModelToNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<T>> insertModelToNamedServiceParameterNamedDS(String parameter)
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
        return Result.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.aboutMeQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUserQWhereLocalExceptionGuiltyUserNoExists));
      }
      return Result.success(AboutMe(
          documentByAboutMe?.data()?[KeysFirebaseFirestoreServiceUtility.aboutMeQUniqueIdByUser],
          documentByAboutMe?.data()?[KeysFirebaseFirestoreServiceUtility.aboutMeQCodeDBD],
          documentByAboutMe?.data()?[KeysFirebaseFirestoreServiceUtility.aboutMeQCodeSteam]) as T);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}