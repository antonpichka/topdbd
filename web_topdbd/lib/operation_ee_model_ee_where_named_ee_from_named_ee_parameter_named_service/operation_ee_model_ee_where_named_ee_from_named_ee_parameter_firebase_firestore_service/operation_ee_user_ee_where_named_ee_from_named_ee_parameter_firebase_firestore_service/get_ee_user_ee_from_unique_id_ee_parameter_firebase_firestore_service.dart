import 'package:common_topdbd/model/user/list_user.dart';
import 'package:common_topdbd/model/user/user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class GetEEUserEEFromUniqueIdEEParameterFirebaseFirestoreService<T extends User,Y extends ListUser<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> getUserFromUniqueIdParameterFirebaseFirestoreService(String uniqueId)
  async {
    try {
      final listDocumentByUser = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.user)
          .where(KeysFirebaseFirestoreServiceUtility.userQQUniqueId,isEqualTo: uniqueId)
          .limit(1)
          .get();
      if((listDocumentByUser?.size ?? 0) <= 0) {
        return Result<T>.exception(LocalException(this,EnumGuilty.user,KeysExceptionUtility.getEEUserEEFromUniqueIdEEParameterFirebaseFirestoreService));
      }
      return Result<T>.success(User(
          listDocumentByUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.userQQUniqueId] ?? "",
          (listDocumentByUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.userQQCreationTime]).toDate() ?? DateTime.now()) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}