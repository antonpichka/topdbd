import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/model/ip_address_firestore/list_ip_address_firestore.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:common_topdbd/named_utility/registration_ip_address_firestore_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class InsertEEIPAddressFirestoreEEFromRegistrationIPAddressFirestoreUtilityEEParameterFirebaseFirestoreService<T extends IPAddressFirestore,Y extends ListIPAddressFirestore<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> insertIPAddressFirestoreFromRegistrationIPAddressFirestoreUtilityParameterFirebaseFirestoreService(RegistrationIPAddressFirestoreUtility registrationIPAddressFirestoreUtility)
  async {
    try {
      final documentByIPAddressWhereAdding = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.ipAddress)
          .add({
        KeysFirebaseFirestoreServiceUtility.ipAddressQQUniqueIdByUser : registrationIPAddressFirestoreUtility.uniqueIdByUser,
        KeysFirebaseFirestoreServiceUtility.ipAddressQQIp : registrationIPAddressFirestoreUtility.ip
          });
      final documentByIPAddress = await documentByIPAddressWhereAdding?.get();
      if(!(documentByIPAddress?.exists ?? false)) {
        return Result<T>.exception(LocalException(this,EnumGuilty.user,KeysExceptionUtility.insertEEIPAddressFirestoreEEFromRegistrationIPAddressFirestoreUtilityEEParameterFirebaseFirestoreService));
      }
      return Result<T>.success(IPAddressFirestore(
          documentByIPAddress?.data()?[KeysFirebaseFirestoreServiceUtility.ipAddressQQUniqueIdByUser] ?? "",
          documentByIPAddress?.data()?[KeysFirebaseFirestoreServiceUtility.ipAddressQQIp] ?? "") as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}