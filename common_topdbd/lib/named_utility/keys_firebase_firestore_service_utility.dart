// ignore_for_file: constant_identifier_names

import 'package:meta/meta.dart';

@immutable
final class KeysFirebaseFirestoreServiceUtility {
  /* ThoseWorks  */
  static const String thoseWorks = "thoseWorks";
  static const String thoseWorksQIsThoseWorks = "isThoseWorks";
  /* TOPDBDVersionWeb */
  static const String TOPDBDVersionWeb = "TOPDBDVersionWeb";
  static const String TOPDBDVersionWebQVersion = "version";
  /* TOPDBDVersionWindows */
  static const String TOPDBDVersionWindows = "TOPDBDVersionWindows";
  static const String TOPDBDVersionWindowsQVersion = "version";
  /* User */
  static const String user = "user";
  static const String userQUniqueId = "uniqueId";
  static const String userQCreationTime = "creationTime";
  /* DiscordUser as DiscordUserFirestore */
  static const String discordUser = "discordUser";
  static const String discordUserQUniqueId = "uniqueId";
  static const String discordUserQUniqueIdByUser = "uniqueIdByUser";
  static const String discordUserQUsername = "username";
  static const String discordUserQGlobalName = "globalName";
  /* VerifiedUser */
  static const String verifiedUser = "verifiedUser";
  static const String verifiedUserQUniqueIdByUser = "uniqueIdByUser";
  static const String verifiedUserQIsVerifiedUser = "isVerifiedUser";
  /* RoleUser */
  static const String roleUser = "roleUser";
  static const String roleUserQUniqueIdByUser = "uniqueIdByUser";
  static const String roleUserQIsAdmin = "isAdmin";
  static const String roleUserQIsTest = "isTest";
  /* LastLoginTimeUser */
  static const String lastLoginTimeUser = "lastLoginTimeUser";
  static const String lastLoginTimeUserQUniqueIdByUser = "uniqueIdByUser";
  static const String lastLoginTimeUserQLastLoginTime = "lastLoginTime";
  /* IPAddress as IPAddressFirestore */
  static const String ipAddress = "ipAddress";
  static const String ipAddressQUniqueIdByUser = "uniqueIdByUser";
  static const String ipAddressQIp = "ip";
  /* Country */
  static const String country = "country";
  static const String countryQUniqueIdByUser = "uniqueIdByUser";
  static const String countryQNameCountry = "nameCountry";
  /* AboutMe */
  static const String aboutMe = "aboutMe";
  static const String aboutMeQUniqueIdByUser = "uniqueIdByUser";
  static const String aboutMeQCodeDBD = "codeDBD";
  static const String aboutMeQCodeSteam = "codeSteam";
  /* Season */
  static const String season = "season";
  static const String seasonQSeasonNumber = "seasonNumber";
  static const String seasonQStrNumberOfMatchesPlayedPerSeason = "strNumberOfMatchesPlayedPerSeason";
  static const String seasonQStrNumberOfUniquePlayersWhoPlayedInASeason = "strNumberOfUniquePlayersWhoPlayedInASeason";
  static const String seasonQEndOfSeasonTime = "endOfSeasonTime";
  /* Stats */
  static const String stats = "stats";
  static const String statsQUniqueIdByUser = "uniqueIdByUser";
  static const String statsQSeasonNumberBySeason = "seasonNumberBySeason";
  static const String statsQMatchesWon = "matchesWon";
  static const String statsQMatchesLost = "matchesLost";
  static const String statsQRatingPoints = "ratingPoints";
  /* MatchBalance */
  static const String matchBalance = "matchBalance";
  static const String matchBalanceQSeasonNumberBySeason = "seasonNumberBySeason";
  static const String matchBalanceQNumberOfRounds = "numberOfRounds";
  static const String matchBalanceQListManiacWithHisLengthPickManiacPerkAndLengthPickSurvivorPerkAndListMapsAndListManiacPerkAndListSurvivorPerk = "listManiacWithHisLengthPickManiacPerkAndLengthPickSurvivorPerkAndListMapsAndListManiacPerkAndListSurvivorPerk";
  /* Matches */
  static const String matches = "matches";
  static const String matchesQUniqueId = "uniqueId";
  static const String matchesQCreationTime = "creationTime";
  static const String matchesQIsCompleted = "isCompleted";
  static const String matchesQTextLogAction = "textLogAction";
  static const String matchesQSeasonNumberBySeason = "seasonNumberBySeason";
  static const String matchesQNumberOfRoundsByMatchBalance = "numberOfRoundsByMatchBalance";
  static const String matchesQListManiacWithHisLengthPickManiacPerkAndLengthPickSurvivorPerkAndListMapsAndListManiacPerkAndListSurvivorPerkByMatchBalance = "listManiacWithHisLengthPickManiacPerkAndLengthPickSurvivorPerkAndListMapsAndListManiacPerkAndListSurvivorPerkByMatchBalance";
  static const String matchesQUniqueIdByUserWhereFirst = "uniqueIdByUserWhereFirst";
  static const String matchesQUniqueIdByUserWhereSecond = "uniqueIdByUserWhereSecond";
  static const String matchesQIsRoleManiacForUniqueIdByUserWhereFirst = "isRoleManiacForUniqueIdByUserWhereFirst";
  static const String matchesQIsTimerStartForUniqueIdByUserWhereFirst = "isTimerStartForUniqueIdByUserWhereFirst";
  static const String matchesQIsTimerStartForUniqueIdByUserWhereSecond = "isTimerStartForUniqueIdByUserWhereSecond";
  static const String matchesQListBanManiacWithHisNameForUniqueIdByUserWhereFirst = "listBanManiacWithHisNameForUniqueIdByUserWhereFirst";
  static const String matchesQListBanManiacWithHisNameForUniqueIdByUserWhereSecond = "listBanManiacWithHisNameForUniqueIdByUserWhereSecond";
  static const String matchesQListPickManiacWithHisNameForUniqueIdByUserWhereFirst = "listPickManiacWithHisNameForUniqueIdByUserWhereFirst";
  static const String matchesQListPickManiacWithHisNameForUniqueIdByUserWhereSecond = "listPickManiacWithHisNameForUniqueIdByUserWhereSecond";
  static const String matchesQListBanMapsWithHisNameAndNameManiacForUniqueIdByUserWhereFirst = "listBanMapsWithHisNameAndNameManiacForUniqueIdByUserWhereFirst";
  static const String matchesQListBanMapsWithHisNameAndNameManiacForUniqueIdByUserWhereSecond = "listBanMapsWithHisNameAndNameManiacForUniqueIdByUserWhereSecond";
  static const String matchesQListPickMapsWithHisNameAndNameManiacForUniqueIdByUserWhereFirst = "listPickMapsWithHisNameAndNameManiacForUniqueIdByUserWhereFirst";
  static const String matchesQListPickMapsWithHisNameAndNameManiacForUniqueIdByUserWhereSecond = "listPickMapsWithHisNameAndNameManiacForUniqueIdByUserWhereSecond";
  static const String matchesQListBanManiacPerkWithHisNameAndNameManiacForUniqueIdByUserWhereFirst = "listBanManiacPerkWithHisNameAndNameManiacForUniqueIdByUserWhereFirst";
  static const String matchesQListBanManiacPerkWithHisNameAndNameManiacForUniqueIdByUserWhereSecond = "listBanManiacPerkWithHisNameAndNameManiacForUniqueIdByUserWhereSecond";
  static const String matchesQListPickManiacPerkWithHisNameAndNameManiacForUniqueIdByUserWhereFirst = "listPickManiacPerkWithHisNameAndNameManiacForUniqueIdByUserWhereFirst";
  static const String matchesQListPickManiacPerkWithHisNameAndNameManiacForUniqueIdByUserWhereSecond = "listPickManiacPerkWithHisNameAndNameManiacForUniqueIdByUserWhereSecond";
  static const String matchesQListBanSurvivorPerkWithHisNameAndNameManiacForUniqueIdByUserWhereFirst = "listBanSurvivorPerkWithHisNameAndNameManiacForUniqueIdByUserWhereFirst";
  static const String matchesQListBanSurvivorPerkWithHisNameAndNameManiacForUniqueIdByUserWhereSecond = "listBanSurvivorPerkWithHisNameAndNameManiacForUniqueIdByUserWhereSecond";
  static const String matchesQListPickSurvivorPerkWithHisNameAndNameManiacForUniqueIdByUserWhereFirst = "listPickSurvivorPerkWithHisNameAndNameManiacForUniqueIdByUserWhereFirst";
  static const String matchesQListPickSurvivorPerkWithHisNameAndNameManiacForUniqueIdByUserWhereSecond = "listPickSurvivorPerkWithHisNameAndNameManiacForUniqueIdByUserWhereSecond";
  static const String matchesQRoundWinForUniqueIdByUserWhereFirst = "roundWinForUniqueIdByUserWhereFirst";
  static const String matchesQRoundWinForUniqueIdByUserWhereSecond = "roundWinForUniqueIdByUserWhereSecond";
  static const String matchesQListElapsedSecondsPerRoundsForUniqueIdByUserWhereFirst = "listElapsedSecondsPerRoundsForUniqueIdByUserWhereFirst";
  static const String matchesQListElapsedSecondsPerRoundsForUniqueIdByUserWhereSecond = "listElapsedSecondsPerRoundsForUniqueIdByUserWhereSecond";
  static const String matchesQResultRatingPointsForUniqueIdByUserWhereFirst = "resultRatingPointsForUniqueIdByUserWhereFirst";
  static const String matchesQResultRatingPointsForUniqueIdByUserWhereSecond = "resultRatingPointsForUniqueIdByUserWhereSecond";

  const KeysFirebaseFirestoreServiceUtility._();
}