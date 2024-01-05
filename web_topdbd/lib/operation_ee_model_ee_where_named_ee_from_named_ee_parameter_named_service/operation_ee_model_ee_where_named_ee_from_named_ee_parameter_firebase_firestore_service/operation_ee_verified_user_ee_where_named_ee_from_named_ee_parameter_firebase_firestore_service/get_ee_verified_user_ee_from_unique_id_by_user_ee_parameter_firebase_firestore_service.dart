import 'package:common_topdbd/model/verified_user/list_verified_user.dart';
import 'package:common_topdbd/model/verified_user/verified_user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class GetEEVerifiedUserEEFromUniqueIdByUserEEParameterFirebaseFirestoreService<T extends VerifiedUser,Y extends ListVerifiedUser<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> getVerifiedUserFromUniqueIdByUserParameterFirebaseFirestoreService(String uniqueIdByUser)
  async {
    try {
      final documentByVerifiedUser = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.verifiedUser)
          .where(KeysFirebaseFirestoreServiceUtility.verifiedUserQQUniqueIdByUser,isEqualTo: uniqueIdByUser)
          .limit(1)
          .get();
      if((documentByVerifiedUser?.size ?? 0) <= 0) {
        return Result<T>.exception(LocalException(this,EnumGuilty.user,KeysExceptionUtility.getEEVerifiedUserEEFromUniqueIdByUserEEParameterFirebaseFirestoreService));
      }
      return Result<T>.success(VerifiedUser(
          documentByVerifiedUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.verifiedUserQQUniqueIdByUser] ?? "",
          documentByVerifiedUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.verifiedUserQQIsVerifiedUser] ?? false,
          (documentByVerifiedUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.verifiedUserQQStartOfTemporaryAccess]).toDate() ?? DateTime(0),
          (documentByVerifiedUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.verifiedUserQQEndOfTemporaryAccess]).toDate() ?? DateTime(0)) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}