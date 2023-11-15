// ignore_for_file: library_prefixes

import 'dart:convert';
import 'package:common_topdbd/named_utility/keys_api_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as LAMM;
import 'package:web_topdbd/named_service/http_client_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(AppView());

  /// The expected result will only be if you interact with the button

  // EXPECTED OUTPUT:
  //
  // Strings(field: {
  //  id: ${id},
  //  username: ${username},
  //  avatar: ${avatar (hash)},
  //  discriminator: ${discriminator},
  //  public_flags: ${public_flags},
  //  premium_type: ${premium_type},
  //  flags: ${flags},
  //  banner: ${banner},
  //  accent_color: ${accent_color},
  //  global_name: ${global_name},
  //  avatar_decoration_data: ${avatar_decoration_data},
  //  banner_color: ${banner_color},
  //  mfa_enabled: ${mfa_enabled},
  //  locale: ${locale}
  // })
  //

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
}

final class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: ElevatedButton(
            onPressed: () async {
              final discordAuthAPI = await DiscordAuthAPI().discordAuthAPI();
              if(discordAuthAPI
                  .exceptionController
                  .isWhereNotEqualsNullParameterException())
              {
                LAMM.debugPrint(discordAuthAPI
                    .exceptionController
                    .getKeyParameterException);
                return;
              }
              LAMM.debugPrint(discordAuthAPI
                  .parameter
                  .toString());
            },
            child: const Text("Discord"),
          ),
        ));
  }
}

final class DiscordAuthAPI {
  final httpClientService = HttpClientService.instance;

  Future<Result<Strings>> discordAuthAPI()
  async {
    try {
      final responseAuthenticateDiscord = await FlutterWebAuth2.authenticate(
          url: Uri.https('discord.com', '/api/oauth2/authorize', {
            'response_type': 'code',
            'client_id': KeysAPIUtility.discordOAUTHQQClientId,
            'redirect_uri': KeysAPIUtility.discordOAUTHQQRedirectUri,
            'scope': 'identify'
          }).toString(),
          callbackUrlScheme: "valid-callback-scheme");
      final responseDiscordOauth2Token = await httpClientService
          .getParameterHttpClient
          ?.post(Uri.parse('https://discord.com/api/oauth2/token'),
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
          },
          body: {
            'client_id': KeysAPIUtility.discordOAUTHQQClientId,
            'client_secret': KeysAPIUtility.discordOAUTHQQClientSecret,
            'redirect_uri': KeysAPIUtility.discordOAUTHQQRedirectUri,
            'grant_type': 'authorization_code',
            'code': Uri
                .parse(responseAuthenticateDiscord)
                .queryParameters['code'],
          });
      if (responseDiscordOauth2Token?.statusCode != 200) {
        throw NetworkException.fromKeyAndStatusCode(this, responseDiscordOauth2Token!.statusCode.toString(), responseDiscordOauth2Token.statusCode);
      }
      final jsonFromResponseDiscordOauth2Token = jsonDecode(responseDiscordOauth2Token!.body);
      final responseDiscordUser = await httpClientService
          .getParameterHttpClient
          ?.get(Uri.parse('https://discord.com/api/users/@me'),
          headers: {
            'authorization': '${jsonFromResponseDiscordOauth2Token["token_type"]} ${jsonFromResponseDiscordOauth2Token["access_token"]}',
          });
      if(responseDiscordUser?.statusCode != 200) {
        throw NetworkException.fromKeyAndStatusCode(this, responseDiscordUser!.statusCode.toString(), responseDiscordUser.statusCode);
      }
      final Map<String,dynamic> data = jsonDecode(responseDiscordUser!.body);
      return Result.success(Strings(data.toString()));
    } on NetworkException catch(e) {
      return Result.exception(e);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,e.toString()));
    }
  }
}
