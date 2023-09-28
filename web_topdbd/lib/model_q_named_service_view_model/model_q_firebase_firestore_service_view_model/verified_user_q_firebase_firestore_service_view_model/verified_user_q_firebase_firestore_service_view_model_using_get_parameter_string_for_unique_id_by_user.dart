import 'package:common_topdbd/model/verified_user/list_verified_user.dart';
import 'package:common_topdbd/model/verified_user/verified_user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class VerifiedUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser<T extends VerifiedUser,Y extends ListVerifiedUser<T>> extends BaseGetModelFromNamedServiceParameterNamedDataSource<T,String> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> getVerifiedUserFromFirebaseFirestoreServiceParameterStringDS(String parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<T>> getModelFromNamedServiceParameterNamedDS(String parameter)
  async {
    try {
      final documentByVerifiedUser = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.verifiedUser)
          .where(KeysFirebaseFirestoreServiceUtility.verifiedUserQUniqueIdByUser,isEqualTo: parameter)
          .limit(1)
          .get();
      if((documentByVerifiedUser?.size ?? 0) <= 0) {
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.verifiedUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUserQWhereLocalExceptionGuiltyUserNoExists));
      }
      return Result<T>.success(VerifiedUser(
          documentByVerifiedUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.verifiedUserQUniqueIdByUser],
          documentByVerifiedUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.verifiedUserQIsVerifiedUser]) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }

}