import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/model/ip_address_firestore/list_ip_address_firestore.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class GetEEIPAddressFirestoreEEFromUniqueIdByUserEEParameterFirebaseFirestoreService<T extends IPAddressFirestore,Y extends ListIPAddressFirestore<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> getIPAddressFirestoreFromUniqueIdByUserParameterFirebaseFirestoreService(String uniqueIdByUser)
  async {
    try {
      final documentByDiscordUser = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.ipAddress)
          .where(KeysFirebaseFirestoreServiceUtility.ipAddressQQUniqueIdByUser,isEqualTo: uniqueIdByUser)
          .limit(1)
          .get();
      if((documentByDiscordUser?.size ?? 0) <= 0) {
        return Result.exception(LocalException(this,EnumGuilty.user,KeysExceptionUtility.getEEIPAddressFirestoreEEFromUniqueIdByUserEEParameterFirebaseFirestoreService));
      }
      return Result.success(IPAddressFirestore(
          documentByDiscordUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.ipAddressQQUniqueIdByUser] ?? "",
          documentByDiscordUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.ipAddressQQIp] ?? "") as T);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}