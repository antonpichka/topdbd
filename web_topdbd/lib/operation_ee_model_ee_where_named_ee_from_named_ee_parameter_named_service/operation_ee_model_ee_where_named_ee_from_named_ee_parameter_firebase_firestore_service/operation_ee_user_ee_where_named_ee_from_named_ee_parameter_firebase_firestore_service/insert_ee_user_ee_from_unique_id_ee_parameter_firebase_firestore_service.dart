import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common_topdbd/model/user/list_user.dart';
import 'package:common_topdbd/model/user/user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class InsertEEUserEEFromUniqueIdEEParameterFirebaseFirestoreService<T extends User,Y extends ListUser<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> insertUserFromUniqueIdParameterFirebaseFirestoreService(String uniqueId)
  async {
    try {
      final documentByUserWhereAdding = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.user)
          .add({
        KeysFirebaseFirestoreServiceUtility.userQQUniqueId : uniqueId,
        KeysFirebaseFirestoreServiceUtility.userQQCreationTime : FieldValue.serverTimestamp()
          });
      final documentByUser = await documentByUserWhereAdding?.get();
      if(!(documentByUser?.exists ?? false)) {
        return Result<T>.exception(LocalException(this,EnumGuilty.user,KeysExceptionUtility.insertEEUserEEFromUniqueIdEEParameterFirebaseFirestoreService));
      }
      return Result<T>.success(User(
          documentByUser?.data()?[KeysFirebaseFirestoreServiceUtility.userQQUniqueId],
          (documentByUser?.data()?[KeysFirebaseFirestoreServiceUtility.userQQCreationTime]).toDate()) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}