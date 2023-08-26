import 'dart:convert';

import 'package:common_topdbd/named_utility/keys_api_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:web_topdbd/model_q_named_service_view_model/named_service/http_client_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(AppView());
}

final class AppView
    extends StatefulWidget
{
  @override
  State<AppView> createState() => _AppViewState();
}

final class _AppViewState
    extends State<AppView>
{
  final _httpClientService = HttpClientService.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: ElevatedButton(
            onPressed: () async {
              await _discordAuth();
            },
            child: const Text("Discord"),
          ),
        ));
  }

  Future<void> _discordAuth()
  async {
    try {
      final responseAuthenticateDiscord = await FlutterWebAuth2.authenticate(
          url: Uri.https('discord.com', '/api/oauth2/authorize', {
            'response_type': 'code',
            'client_id': KeysAPIUtility.discordOAUTHQClientId,
            'redirect_uri': KeysAPIUtility.discordOAUTHQRedirectUri,
            'scope': 'identify'
          }).toString(),
          callbackUrlScheme: "valid-callback-scheme");
      final responseDiscordOauth2Token = await _httpClientService
          .getHttpClient
          ?.post(Uri.parse('https://discord.com/api/oauth2/token'),
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
          },
          body: {
            'client_id': KeysAPIUtility.discordOAUTHQClientId,
            'client_secret': KeysAPIUtility.discordOAUTHQClientSecret,
            'redirect_uri': KeysAPIUtility.discordOAUTHQRedirectUri,
            'grant_type': 'authorization_code',
            'code': Uri
                .parse(responseAuthenticateDiscord)
                .queryParameters['code'],
          });
      if (responseDiscordOauth2Token?.statusCode != 200) {
        throw NetworkException.fromKeyAndStatusCode(this, responseDiscordOauth2Token!.statusCode.toString(), responseDiscordOauth2Token.statusCode);
      }
      final jsonFromResponseDiscordOauth2Token = jsonDecode(responseDiscordOauth2Token!.body);
      final responseDiscordUser = await _httpClientService
          .getHttpClient
          ?.get(Uri.parse('https://discord.com/api/users/@me'),
          headers: {
            'authorization': '${jsonFromResponseDiscordOauth2Token["token_type"]} ${jsonFromResponseDiscordOauth2Token["access_token"]}',
          });
      if(responseDiscordUser?.statusCode != 200) {
        throw NetworkException.fromKeyAndStatusCode(this, responseDiscordUser!.statusCode.toString(), responseDiscordUser.statusCode);
      }
      final Map<String,dynamic> data = jsonDecode(responseDiscordUser!.body);
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