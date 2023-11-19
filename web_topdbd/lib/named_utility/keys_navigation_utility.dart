import 'package:meta/meta.dart';

@immutable
final class KeysNavigationUtility {
  /* NavigationView */
  static const String navigationViewQQHome = "/";
  static const String navigationViewQQTopPlayers = "#/top_players";
  static const String navigationViewQQBalance = "#/balance";
  static const String navigationViewQQLogin = "#/login";
  static const String navigationViewQQTermsOfUse = "#/terms_of_use";
  static const String navigationViewQQTournaments = "#/tournaments";
  /* UnAuthNavigationUserView */
  static const String unAuthNavigationUserViewQQUserQQId = "#/user/{id}";
  static const String unAuthNavigationUserViewQQUserQQIdQQStats = "#/user/{id}/stats";
  static const String unAuthNavigationUserViewQQUserQQIdQQMatches = "#/user/{id}/matches";
  /* AuthNavigationUserView */
  static const String authNavigationUserViewQQUserQQIdQQSettings = "#/user/{id}/settings";

  const KeysNavigationUtility._();

  /* UnAuthNavigationUserView */
  static String getHtmlRouteWhereUnAuthNavigationUserViewQQUserQQIdFromId(String id) {
    return "#/user/$id";
  }

  static String getNameRouteWhereUnAuthNavigationUserViewQQUserQQIdFromId(String id) {
    return "#/user/{$id}";
  }

  static String getHtmlRouteWhereUnAuthNavigationUserViewQQUserQQIdQQStatsFromId(String id) {
    return "#/user/$id/stats";
  }

  static String getNameRouteWhereUnAuthNavigationUserViewQQUserQQIdQQStatsFromId(String id) {
    return "#/user/{$id}/stats";
  }

  static String getHtmlRouteWhereUnAuthNavigationUserViewQQUserQQIdQQMatchesFromId(String id) {
    return "#/user/$id/matches";
  }

  static String getNameRouteWhereUnAuthNavigationUserViewQQUserQQIdQQMatchesFromId(String id) {
    return "#/user/{$id}/matches";
  }

  /* AuthNavigationUserView */
  static String getHtmlRouteWhereAuthNavigationUserViewQQUserQQIdQQSettingsFromId(String id) {
    return "#/user/$id/settings";
  }

  static String getNameRouteWhereAuthNavigationUserViewQQUserQQIdQQSettingsFromId(String id) {
    return "#/user/{$id}/settings";
  }
}