import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/model/ip_address_firestore/list_ip_address_firestore.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:common_topdbd/named_utility/registration_ip_address_firestore_utility.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/i_get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class IPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterRegistrationIPAddressFirestoreUtility<T extends IPAddressFirestore,Y extends ListIPAddressFirestore<T>>
    implements IGetModelFromNamedServiceParameterNamedDataSource<T,RegistrationIPAddressFirestoreUtility>
{
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<T> getIPAddressFirestoreFromFirebaseFirestoreServiceParameterRegistrationIPAddressFirestoreUtilityDS(RegistrationIPAddressFirestoreUtility parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceParameterNamedDS(RegistrationIPAddressFirestoreUtility parameter)
  async {
    try {
      final documentByIPAddressWhereAdding = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.ipAddress)
          .add({
        KeysFirebaseFirestoreServiceUtility.ipAddressQUniqueIdByUser : parameter.uniqueIdByUser,
        KeysFirebaseFirestoreServiceUtility.ipAddressQIp : parameter.ip
          });
      final documentByIPAddress = await documentByIPAddressWhereAdding?.get();
      if(!(documentByIPAddress?.exists ?? false)) {
        return IPAddressFirestore.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterRegistrationIPAddressFirestoreUtilityQWhereLocalExceptionGuiltyUserNoExists)) as T;
      }
      return IPAddressFirestore.success(
          documentByIPAddress?.data()?[KeysFirebaseFirestoreServiceUtility.ipAddressQUniqueIdByUser],
          documentByIPAddress?.data()?[KeysFirebaseFirestoreServiceUtility.ipAddressQIp]) as T;
    } catch(e) {
      return IPAddressFirestore.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }

}