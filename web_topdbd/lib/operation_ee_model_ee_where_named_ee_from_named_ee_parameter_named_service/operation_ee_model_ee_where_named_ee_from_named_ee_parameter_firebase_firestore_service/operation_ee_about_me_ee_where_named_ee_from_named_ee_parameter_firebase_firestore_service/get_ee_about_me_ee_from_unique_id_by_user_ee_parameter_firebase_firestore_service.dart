import 'package:common_topdbd/model/about_me/about_me.dart';
import 'package:common_topdbd/model/about_me/list_about_me.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class GetEEAboutMeEEFromUniqueIdByUserEEParameterFirebaseFirestoreService<T extends AboutMe,Y extends ListAboutMe<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> getAboutMeFromUniqueIdByUserParameterFirebaseFirestoreService(String uniqueIdByUser)
  async {
    try {
      final documentByAboutMe = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.aboutMe)
          .where(KeysFirebaseFirestoreServiceUtility.aboutMeQQUniqueIdByUser,isEqualTo: uniqueIdByUser)
          .limit(1)
          .get();
      if((documentByAboutMe?.size ?? 0) <= 0) {
        return Result<T>.exception(LocalException(this,EnumGuilty.user,KeysExceptionUtility.getEEAboutMeEEFromUniqueIdByUserEEParameterFirebaseFirestoreService));
      }
      return Result<T>.success(AboutMe(
          documentByAboutMe?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.aboutMeQQUniqueIdByUser],
          documentByAboutMe?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.aboutMeQQCodeDBD]) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}