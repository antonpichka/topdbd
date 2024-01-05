import 'package:meta/meta.dart';

@immutable
final class KeysNavigationUtility {
  /* UnAuthNavigationView */
  static const String unAuthNavigationViewQQHome = "/";
  static const String unAuthNavigationViewQQTopPlayers = "#/top_players";
  static const String unAuthNavigationViewQQBalance = "#/balance";
  static const String unAuthNavigationViewQQLogin = "#/login";
  static const String unAuthNavigationViewQQTournaments = "#/tournaments";
  /* AuthNavigationView */
  static const String authNavigationViewQQAdmin = "#/admin";
  /* CustomFooterView */
  static const String customFooterViewQQTermsOfUse = "#/terms_of_use";
  /* SearchUsersView */
  static const String searchUsersViewQQSearchPlayers = "#/search_players?q=id";
  /* AuthNavigationBalanceView */
  static const String authNavigationBalanceViewQQBalanceQQSettings = "#/balance/settings";
  /* UnAuthNavigationUserView */
  static const String unAuthNavigationUserViewQQUserQQId = "#/user/id";
  static const String unAuthNavigationUserViewQQUserQQIdQQStats = "#/user/id/stats";
  static const String unAuthNavigationUserViewQQUserQQIdQQMatches = "#/user/id/matches";
  /* AuthNavigationUserView */
  static const String authNavigationUserViewQQUserQQIdQQSettings = "#/user/id/settings";

  const KeysNavigationUtility._();

  /* SearchUsersView */
  static String getSearchUsersViewQQSearchPlayersFromId(String id) {
    return "#/search_players?q=$id";
  }

  /* UnAuthNavigationUserView */
  static String getUnAuthNavigationUserViewQQUserQQIdFromId(String id) {
    return "#/user/$id";
  }

  static String getUnAuthNavigationUserViewQQUserQQIdQQStatsFromId(String id) {
    return "#/user/$id/stats";
  }

  static String getUnAuthNavigationUserViewQQUserQQIdQQMatchesFromId(String id) {
    return "#/user/$id/matches";
  }

  /* AuthNavigationUserView */
  static String getAuthNavigationUserViewQQUserQQIdQQSettingsFromId(String id) {
    return "#/user/$id/settings";
  }
}