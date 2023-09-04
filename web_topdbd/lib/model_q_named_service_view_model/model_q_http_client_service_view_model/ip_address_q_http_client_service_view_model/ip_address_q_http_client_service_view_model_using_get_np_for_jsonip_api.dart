import 'dart:convert';
import 'package:common_topdbd/model/ip_address/ip_address.dart';
import 'package:common_topdbd/model/ip_address/list_ip_address.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_http_client_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/http_client_service.dart';

base class IPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI<T extends IPAddress,Y extends ListIPAddress<T>> extends BaseGetModelFromNamedServiceNPDataSource<T> {
  @protected
  final httpClientService = HttpClientService.instance;

  Future<Result<T>> getIPAddressFromHttpClientServiceNPDS() {
    return getModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<Result<T>> getModelFromNamedServiceNPDS()
  async {
    try {
      final response = await httpClientService
          .getHttpClient
          ?.get(Uri.parse("https://jsonip.com/"));
      if(response?.statusCode != 200) {
        throw NetworkException.fromKeyAndStatusCode(this,response!.statusCode.toString(),response.statusCode);
      }
      final Map<String,dynamic> data = jsonDecode(response!.body);
      return Result<T>.success(IPAddress(
          data[KeysHttpClientServiceUtility.iPAddressQIp],
          data[KeysHttpClientServiceUtility.iPAddressQNameCountry]) as T);
    } on NetworkException catch(e) {
      return Result<T>.exception(e);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN));
    }
  }
}