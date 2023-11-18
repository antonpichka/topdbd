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
  /* NavigationUserView */
  static const String navigationUserViewQQUserQQId = "#/user/{id}";
  static const String navigationUserViewQQUserQQIdQQStats = "#/user/{id}/stats";
  static const String navigationUserViewQQUserQQIdQQMatches = "#/user/{id}/matches";

  const KeysNavigationUtility._();

  /* NavigationUserView */
  static String getHtmlRouteWhereNavigationUserViewQQUserQQIdFromId(String id) {
    return "#/user/$id";
  }

  static String getNameRouteWhereNavigationUserViewQQUserQQIdFromId(String id) {
    return "#/user/{$id}";
  }

  static String getHtmlRouteWhereNavigationUserViewQQUserQQIdQQStatsFromId(String id) {
    return "#/user/$id/stats";
  }

  static String getNameRouteWhereNavigationUserViewQQUserQQIdQQStatsFromId(String id) {
    return "#/user/{$id}/stats";
  }

  static String getHtmlRouteWhereNavigationUserViewQQUserQQIdQQMatchesFromId(String id) {
    return "#/user/$id/matches";
  }

  static String getNameRouteWhereNavigationUserViewQQUserQQIdQQMatchesFromId(String id) {
    return "#/user/{$id}/matches";
  }
}