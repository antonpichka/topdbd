import 'dart:convert';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_http_client_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/http_client_service.dart';

@immutable
base class GetEEDatesTimesEEWhereWorldtimeapiAPIEEParameterHttpClientService<T extends DatesTimes,Y extends ListDatesTimes<T>> {
  @protected
  final httpClientService = HttpClientService.instance;

  Future<Result<T>> getDatesTimesWhereWorldtimeapiAPIParameterHttpClientService() async {
    try {
      final response = await httpClientService
          .getParameterHttpClient
          ?.get(Uri.parse("https://worldtimeapi.org/api/timezone/Europe/London"));
      if(response?.statusCode != 200) {
        throw NetworkException.fromKeyAndStatusCode(this, response?.statusCode.toString() ?? "", response?.statusCode ?? 0);
      }
      final Map<String,dynamic> data = jsonDecode(response?.body ?? "");
      final utcDatetime = data[KeysHttpClientServiceUtility.datesTimesQQUtcDatetime] ?? "";
      if(utcDatetime == "") {
        return Result.success(DatesTimes(DateTime(0)) as T);
      }
      return Result.success(DatesTimes(DateTime.parse(utcDatetime)) as T);
    } on NetworkException catch(e) {
      return Result<T>.exception(e);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}