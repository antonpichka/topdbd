import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common_topdbd/model/user/list_user.dart';
import 'package:common_topdbd/model/user/user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class UserQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueId<T extends User,Y extends ListUser<T>> extends BaseInsertModelToNamedServiceParameterNamedDataSource<T,String> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> insertUserToFirebaseFirestoreServiceParameterStringDS(String parameter) {
    return insertModelToNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<T>> insertModelToNamedServiceParameterNamedDS(String parameter)
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
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.userQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdQWhereLocalExceptionGuiltyUserNoExists));
      }
      return Result<T>.success(User(
          documentByUser?.data()?[KeysFirebaseFirestoreServiceUtility.userQUniqueId],
          (documentByUser?.data()?[KeysFirebaseFirestoreServiceUtility.userQCreationTime]).toDate()) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}