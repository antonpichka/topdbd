import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class IPAddressFirestore extends BaseModel {
  final String uniqueIdByUser;
  final String ip;

  const IPAddressFirestore(this.uniqueIdByUser,this.ip) : super(uniqueIdByUser);

  @override
  IPAddressFirestore get getCloneModel => IPAddressFirestore(uniqueIdByUser,ip);

  String getStringWhereNotEqualsFromIpParameterIp(String ip) {
    if(this.ip != ip) {
      return KeysExceptionUtility.iPAddressFirestoreQGetStringWhereNotEqualsFromIpParameterIp;
    }
    return "";
  }
}