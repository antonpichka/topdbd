import 'dart:convert';
import 'package:common_topdbd/model/discord_user/discord_user.dart';
import 'package:common_topdbd/model/discord_user/list_discord_user.dart';
import 'package:common_topdbd/named_utility/keys_api_utility.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_http_client_service_utility.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/http_client_service.dart';

base class DiscordUserQHttpClientServiceViewModelUsingGetNPForDiscordAuth<T extends DiscordUser,Y extends ListDiscordUser<T>> extends BaseGetModelFromNamedServiceNPDataSource<T> {
  @protected
  final httpClientService = HttpClientService.instance;

  Future<Result<T>> getDiscordUserFromHttpClientServiceNPDS() {
    return getModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<Result<T>> getModelFromNamedServiceNPDS()
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
      final responseDiscordOauth2Token = await httpClientService
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
      final responseDiscordUser = await httpClientService
          .getHttpClient
          ?.get(Uri.parse('https://discord.com/api/users/@me'),
          headers: {
            'authorization': '${jsonFromResponseDiscordOauth2Token["token_type"]} ${jsonFromResponseDiscordOauth2Token["access_token"]}',
          });
      if(responseDiscordUser?.statusCode != 200) {
        throw NetworkException.fromKeyAndStatusCode(this, responseDiscordUser!.statusCode.toString(), responseDiscordUser.statusCode);
      }
      final Map<String,dynamic> data = jsonDecode(responseDiscordUser!.body);
      return Result<T>.success(DiscordUser(
          data[KeysHttpClientServiceUtility.discordUserQId],
          data[KeysHttpClientServiceUtility.discordUserQUsername],
          data[KeysHttpClientServiceUtility.discordUserQGlobalName]) as T);
    } on NetworkException catch(e) {
      return Result<T>.exception(e);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN));
    }
  }
}