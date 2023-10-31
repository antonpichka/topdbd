import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/model/ip_address_firestore/list_ip_address_firestore.dart';
import 'package:common_topdbd/named_utility/ip_to_ip_address_firestore_utility.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class UpdateEEIPAddressFirestoreEEFromIPToIPAddressFirestoreUtilityEEParameterFirebaseFirestoreService<T extends IPAddressFirestore,Y extends ListIPAddressFirestore<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> updateIPAddressFirestoreFromIPToIPAddressFirestoreUtilityParameterFirebaseFirestoreService(IPToIPAddressFirestoreUtility iPToIPAddressFirestoreUtility)
  async {
    try {
      final listDocumentByIPAddress = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.ipAddress)
          .where(KeysFirebaseFirestoreServiceUtility.ipAddressQQUniqueIdByUser, isEqualTo: iPToIPAddressFirestoreUtility.uniqueIdByUser)
          .limit(1)
          .get();
      if(!(listDocumentByIPAddress?.docs[0].exists ?? false)) {
        return Result<T>.exception(LocalException(this,EnumGuilty.user,KeysExceptionUtility.updateEEIPAddressFirestoreEEFromIPToIPAddressFirestoreUtilityEEParameterFirebaseFirestoreService));
      }
      final firstItemDocumentByIPAddress = listDocumentByIPAddress?.docs[0];
      await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.ipAddress)
          .doc(firstItemDocumentByIPAddress?.id)
          .update({
        KeysFirebaseFirestoreServiceUtility.ipAddressQQUniqueIdByUser : firstItemDocumentByIPAddress?.data()[KeysFirebaseFirestoreServiceUtility.ipAddressQQUniqueIdByUser],
        KeysFirebaseFirestoreServiceUtility.ipAddressQQIp : iPToIPAddressFirestoreUtility.ip,
      });
      return Result<T>.success(IPAddressFirestore(
          firstItemDocumentByIPAddress?.data()[KeysFirebaseFirestoreServiceUtility.ipAddressQQUniqueIdByUser],
          iPToIPAddressFirestoreUtility.ip) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}