import 'dart:convert';
import 'package:web_topdbd/named_service/http_client_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

Future<void> main() async {
  final jsonipAPI = await JsonipAPI().jsonipAPI();
  if(jsonipAPI
      .exceptionController
      .isWhereNotEqualsNullParameterException())
  {
    debugPrint(jsonipAPI
        .exceptionController
        .getKeyParameterException);
    return;
  }
  debugPrint(jsonipAPI
      .parameter
      .toString());
  // EXPECTED OUTPUT:
  //
  // Strings(field: {ip: ${your_ip}, geo-ip: https://getjsonip.com/#plus, API Help: https://getjsonip.com/#docs})
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

final class JsonipAPI {
  final httpClientService = HttpClientService.instance;

  Future<Result<Strings>> jsonipAPI()
  async {
    try {
      final response = await httpClientService
          .getParameterHttpClient
          ?.get(Uri.parse("https://jsonip.com/"));
      if(response?.statusCode != 200) {
        throw NetworkException.fromKeyAndStatusCode(this, response?.statusCode.toString() ?? "", response?.statusCode ?? 0);
      }
      final Map<String,dynamic> data = jsonDecode(response?.body ?? "");
      return Result.success(Strings(data.toString()));
    } on NetworkException catch(e) {
      return Result.exception(e);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,e.toString()));
    }
  }
}