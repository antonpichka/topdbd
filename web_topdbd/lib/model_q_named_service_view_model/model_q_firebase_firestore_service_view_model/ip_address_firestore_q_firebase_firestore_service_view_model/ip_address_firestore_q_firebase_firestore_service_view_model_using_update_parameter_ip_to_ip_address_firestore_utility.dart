import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/model/ip_address_firestore/list_ip_address_firestore.dart';
import 'package:common_topdbd/named_utility/ip_to_ip_address_firestore_utility.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class IPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingUpdateParameterIPToIPAddressFirestoreUtility<T extends IPAddressFirestore,Y extends ListIPAddressFirestore<T>> extends BaseUpdateModelToNamedServiceParameterNamedDataSource<T,IPToIPAddressFirestoreUtility> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> updateIPAddressFirestoreToFirebaseFirestoreServiceParameterIPToIPAddressFirestoreUtilityDS(IPToIPAddressFirestoreUtility parameter) {
    return updateModelToNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<T>> updateModelToNamedServiceParameterNamedDS(IPToIPAddressFirestoreUtility parameter)
  async {
    try {
      final listDocumentByIPAddress = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.ipAddress)
          .where(KeysFirebaseFirestoreServiceUtility.ipAddressQUniqueIdByUser, isEqualTo: parameter.uniqueIdByUser)
          .limit(1)
          .get();
      if(!(listDocumentByIPAddress?.docs[0].exists ?? false)) {
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingUpdateParameterIPToIPAddressFirestoreUtilityQWhereLocalExceptionGuiltyUserNoExists));
      }
      final firstItemDocumentByIPAddress = listDocumentByIPAddress?.docs[0];
      await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.ipAddress)
          .doc(firstItemDocumentByIPAddress?.id)
          .update({
        KeysFirebaseFirestoreServiceUtility.ipAddressQUniqueIdByUser : firstItemDocumentByIPAddress?.data()[KeysFirebaseFirestoreServiceUtility.ipAddressQUniqueIdByUser],
        KeysFirebaseFirestoreServiceUtility.ipAddressQIp : parameter.ip,
      });
      return Result<T>.success(IPAddressFirestore(
          firstItemDocumentByIPAddress?.data()[KeysFirebaseFirestoreServiceUtility.ipAddressQUniqueIdByUser],
          parameter.ip) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}