import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class IPAddress extends BaseModel {
  final String ip;
  final String nameCountry;

  const IPAddress(this.ip,this.nameCountry) : super(ip);

  @override
  IPAddress get getClone => IPAddress(ip,nameCountry);

  String getStringWhereNotEqualsFromNameCountryParameterNameCountry(String nameCountry) {
    if(this.nameCountry != nameCountry) {
      return KeysExceptionUtility.iPAddressQGetStringWhereNotEqualsFromNameCountryParameterNameCountry;
    }
    return "";
  }

  String getStringWhereNotEqualsFromIpParameterIp(String ip) {
    if(this.ip != ip) {
      return KeysExceptionUtility.iPAddressQGetStringWhereNotEqualsFromIpParameterIp;
    }
    return "";
  }
}