import 'package:common_topdbd/model/verified_user/list_verified_user.dart';
import 'package:common_topdbd/model/verified_user/verified_user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:common_topdbd/named_utility/registration_verified_user_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class InsertEEVerifiedUserEEFromRegistrationVerifiedUserUtilityEEParameterFirebaseFirestoreService<T extends VerifiedUser,Y extends ListVerifiedUser<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> insertVerifiedUserFromRegistrationVerifiedUserUtilityParameterFirebaseFirestoreService(RegistrationVerifiedUserUtility registrationVerifiedUserUtility)
  async {
    try {
      final documentByVerifiedUserWhereAdding = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.verifiedUser)
          .add({
        KeysFirebaseFirestoreServiceUtility.verifiedUserQQUniqueIdByUser : registrationVerifiedUserUtility.uniqueIdByUser,
        KeysFirebaseFirestoreServiceUtility.verifiedUserQQIsVerifiedUser : registrationVerifiedUserUtility.isVerifiedUser,
      });
      final documentByVerifiedUser = await documentByVerifiedUserWhereAdding?.get();
      if(!(documentByVerifiedUser?.exists ?? false)) {
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.insertEEVerifiedUserEEFromRegistrationVerifiedUserUtilityEEParameterFirebaseFirestoreService));
      }
      return Result<T>.success(VerifiedUser(
          documentByVerifiedUser?.data()?[KeysFirebaseFirestoreServiceUtility.verifiedUserQQUniqueIdByUser],
          documentByVerifiedUser?.data()?[KeysFirebaseFirestoreServiceUtility.verifiedUserQQIsVerifiedUser]) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}