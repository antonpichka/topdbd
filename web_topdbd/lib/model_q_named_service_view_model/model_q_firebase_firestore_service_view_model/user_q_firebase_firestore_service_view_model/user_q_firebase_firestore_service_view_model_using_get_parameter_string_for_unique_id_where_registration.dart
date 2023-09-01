import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common_topdbd/model/user/list_user.dart';
import 'package:common_topdbd/model/user/user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class UserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdWhereRegistration<T extends User,Y extends ListUser<T>> extends BaseGetModelFromNamedServiceParameterNamedDataSource<T,String> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<T> getUserFromFirebaseFirestoreServiceParameterStringDS(String parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceParameterNamedDS(String parameter)
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
        return User.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.userQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdWhereRegistrationQWhereLocalExceptionGuiltyUserNoExists)) as T;
      }
      return User.success(
          documentByUser?.data()?[KeysFirebaseFirestoreServiceUtility.userQUniqueId],
          documentByUser?.data()?[KeysFirebaseFirestoreServiceUtility.userQCreationTime]) as T;
    } catch(e) {
      return User.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}