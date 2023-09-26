import 'package:common_topdbd/model/user/list_user.dart';
import 'package:common_topdbd/model/user/user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class UserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueId<T extends User,Y extends ListUser<T>> extends BaseGetModelFromNamedServiceParameterNamedDataSource<T,String> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> getUserFromFirebaseFirestoreServiceParameterStringDS(String parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<T>> getModelFromNamedServiceParameterNamedDS(String parameter)
  async {
    try {
      final listDocumentByUser = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.user)
          .where(KeysFirebaseFirestoreServiceUtility.userQUniqueId,isEqualTo: parameter)
          .limit(1)
          .get();
      if(!(listDocumentByUser?.docs[0].exists ?? false)) {
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.userQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdQWhereLocalExceptionGuiltyUserNoExists));
      }
      final documentByUser = listDocumentByUser?.docs[0];
      return Result<T>.success(User(
          documentByUser?.data()[KeysFirebaseFirestoreServiceUtility.userQUniqueId],
          (documentByUser?.data()[KeysFirebaseFirestoreServiceUtility.userQCreationTime]).toDate()) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}