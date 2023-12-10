import 'dart:convert';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:web_topdbd/named_service/http_client_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

Future<void> main() async {
  final worldtimeapiAPI = await WorldtimeapiAPI().worldtimeapiAPI();
  if(worldtimeapiAPI
      .exceptionController
      .isWhereNotEqualsNullParameterException())
  {
    debugPrint(worldtimeapiAPI
        .exceptionController
        .getKeyParameterException);
    return;
  }
  debugPrint(worldtimeapiAPI
      .parameter
      .toString());
  // EXPECTED OUTPUT:
  //
  // Strings(field: {
  //  abbreviation: GMT,
  //  client_ip: 95.132.171.1,
  //  datetime: 2023-12-10T18:18:02.034946+00:00,
  //  day_of_week: 0,
  //  day_of_year: 344,
  //  dst: false,
  //  dst_from: null,
  //  dst_offset: 0,
  //  dst_until: null,
  //  raw_offset: 0,
  //  timezone: Europe/London,
  //  unixtime: 1702232282,
  //  utc_datetime: 2023-12-10T18:18:02.034946+00:00,
  //  utc_offset: +00:00,
  //  week_number: 49
  // })
  //
  // Process finished with exit code 0

  /// OR

  // EXPECTED OUTPUT:
  //
  // ===start_to_trace_exception===
  //
  // WhereHappenedException(Class) --> ${WhereHappenedException(Class)}
  // NameException(Class) --> ${NameException(Class)}
  // toString() --> ${toString()}
  //
  // ===end_to_trace_exception===
  //
  // ${getKeyParameterException}
  //
  // Process finished with exit code 0
}

final class WorldtimeapiAPI {
  final httpClientService = HttpClientService.instance;

  Future<Result<Strings>> worldtimeapiAPI() async {
    try {
      final response = await httpClientService
          .getParameterHttpClient
          ?.get(Uri.parse("https://worldtimeapi.org/api/timezone/Europe/London"));
      if(response?.statusCode != 200) {
        throw NetworkException.fromKeyAndStatusCode(this, response?.statusCode.toString() ?? "", response?.statusCode ?? 0);
      }
      final Map<String,dynamic> data = jsonDecode(response?.body ?? "");
      return Result.success(Strings(data.toString()));
    } on NetworkException catch(e) {
      return Result.exception(e);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}