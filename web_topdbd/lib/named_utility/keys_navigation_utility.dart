import 'package:meta/meta.dart';

@immutable
final class KeysNavigationUtility {
  static const String notVerifiedUser = "#/not_verified_user";
  static const String hacked = "#/hacked";
  static const String home = "/";
  static const String topPlayers = "#/top_players";
  static const String balance = "#/balance";
  static const String login = "#/login";
  static const String admin = "#/admin";
  static const String termsOfUse = "#/terms_of_use";
  static const String searchPlayers = "#/search_players?q=id";
  static const String balanceQQSettings = "#/balance/settings";
  static const String userQQId = "#/user/id";
  static const String userQQIdQQStats = "#/user/id/stats";
  static const String userQQIdQQMatches = "#/user/id/matches";
  static const String userQQIdQQSettings = "#/user/id/settings";

  const KeysNavigationUtility._();

  static String getSearchPlayersFromId(String id) {
    return "#/search_players?q=$id";
  }

  static String getUserQQIdFromId(String id) {
    return "#/user/$id";
  }

  static String getUserQQIdQQStatsFromId(String id) {
    return "#/user/$id/stats";
  }

  static String getUserQQIdQQMatchesFromId(String id) {
    return "#/user/$id/matches";
  }

  static String getUserQQIdQQSettingsFromId(String id) {
    return "#/user/$id/settings";
  }
}