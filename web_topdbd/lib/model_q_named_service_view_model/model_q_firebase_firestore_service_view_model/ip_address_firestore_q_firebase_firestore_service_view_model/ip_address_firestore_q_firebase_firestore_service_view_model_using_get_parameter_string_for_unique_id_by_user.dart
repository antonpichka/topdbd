import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/model/ip_address_firestore/list_ip_address_firestore.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class IPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser<T extends IPAddressFirestore,Y extends ListIPAddressFirestore<T>> extends BaseGetModelFromNamedServiceParameterNamedDataSource<T,String> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> getIPAddressFirestoreFromFirebaseFirestoreServiceParameterStringDS(String parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<T>> getModelFromNamedServiceParameterNamedDS(String parameter)
  async {
    try {
      final documentByDiscordUser = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.ipAddress)
          .where(KeysFirebaseFirestoreServiceUtility.ipAddressQUniqueIdByUser,isEqualTo: parameter)
          .limit(1)
          .get();
      if((documentByDiscordUser?.size ?? 0) <= 0) {
        return Result.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUserQWhereLocalExceptionGuiltyUserNoExists));
      }
      return Result.success(IPAddressFirestore(
          documentByDiscordUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.ipAddressQUniqueIdByUser],
          documentByDiscordUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.ipAddressQIp]) as T);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}