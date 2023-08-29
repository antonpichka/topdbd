import 'dart:convert';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/utility.dart';
import 'package:web_topdbd/named_service/http_client_service.dart';

Future<void> main() async {
  await JsonipAPI().getIpFromJsonipAPI();
}

final class JsonipAPI {
  final httpClientService = HttpClientService.instance;

  Future<void> getIpFromJsonipAPI()
  async {
    try {
      final response = await httpClientService
          .getHttpClient
          ?.get(Uri.parse("https://jsonip.com/"));
      if(response?.statusCode != 200) {
        throw NetworkException.fromKeyAndStatusCode(this, response!.statusCode.toString(), response.statusCode);
      }
      final Map<String,dynamic> data = jsonDecode(response!.body);
      debugPrint(data.toString());
    // ignore: unused_catch_clause
    } on NetworkException catch(e) {
      return;
    } catch(e) {
      debugPrint(e.toString());
      return;
    }
  }
}