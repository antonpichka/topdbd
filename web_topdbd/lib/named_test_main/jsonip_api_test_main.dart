// ignore_for_file: library_prefixes

import 'dart:convert';
import 'package:web_topdbd/named_service/http_client_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as LAMM;

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
        throw LAMM.NetworkException.fromKeyAndStatusCode(this, response!.statusCode.toString(), response.statusCode);
      }
      final Map<String,dynamic> data = jsonDecode(response!.body);
      LAMM.debugPrint(data.toString());
    // ignore: unused_catch_clause
    } on LAMM.NetworkException catch(e) {
      return;
    } catch(e) {
      LAMM.debugPrint(e.toString());
      return;
    }
  }
}