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
  static const String navigationUserViewQQUserQQId = "#/user/id";
  static const String navigationUserViewQQUserQQIdQQStats = "#/user/id/stats";
  static const String navigationUserViewQQUserQQIdQQMatches = "#/user/id/matches";
  /* AuthNavigationUserView */
  static const String authNavigationUserViewQQUserQQIdQQSettings = "#/user/id/settings";

  const KeysNavigationUtility._();

  /* NavigationUserView */
  static String getNavigationUserViewQQUserQQIdFromId(String id) {
    return "#/user/$id";
  }

  static String getNavigationUserViewQQUserQQIdQQStatsFromId(String id) {
    return "#/user/$id/stats";
  }

  static String getNavigationUserViewQQUserQQIdQQMatchesFromId(String id) {
    return "#/user/$id/matches";
  }

  /* AuthNavigationUserView */
  static String getAuthNavigationUserViewQQUserQQIdQQSettingsFromId(String id) {
    return "#/user/$id/settings";
  }
}