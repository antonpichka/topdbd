import 'package:common_topdbd/model/about_me/about_me.dart';
import 'package:common_topdbd/model/about_me/list_about_me.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class AboutMeQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser<T extends AboutMe,Y extends ListAboutMe<T>> extends BaseGetModelFromNamedServiceParameterNamedDataSource<T,String> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> getAboutMeFromFirebaseFirestoreServiceParameterStringDS(String parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<T>> getModelFromNamedServiceParameterNamedDS(String parameter)
  async {
    try {
      final documentByAboutMe = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.aboutMe)
          .where(KeysFirebaseFirestoreServiceUtility.aboutMeQUniqueIdByUser,isEqualTo: parameter)
          .limit(1)
          .get();
      if((documentByAboutMe?.size ?? 0) <= 0) {
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.aboutMeQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUserQWhereLocalExceptionGuiltyUserNoExists));
      }
      return Result<T>.success(AboutMe(
          documentByAboutMe?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.aboutMeQUniqueIdByUser],
          documentByAboutMe?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.aboutMeQCodeDBD]) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }

}