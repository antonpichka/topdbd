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

  @override
  String toString() {
    return "IPAddress(ip: $ip, "
        "nameCountry: $nameCountry)";
  }

  String getExceptionInStringWhereNotEqualsFromNameCountryParameterNameCountry(String nameCountry) {
    if(this.nameCountry != nameCountry) {
      return KeysExceptionUtility.iPAddressQQGetExceptionInStringWhereNotEqualsFromNameCountryParameterNameCountry;
    }
    return "";
  }

  String getExceptionInStringWhereNotEqualsFromIpParameterIp(String ip) {
    if(this.ip != ip) {
      return KeysExceptionUtility.iPAddressQQGetExceptionInStringWhereNotEqualsFromIpParameterIp;
    }
    return "";
  }
}