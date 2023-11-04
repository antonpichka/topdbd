// ignore_for_file: constant_identifier_names

import 'package:meta/meta.dart';

@immutable
final class KeysFirebaseFirestoreServiceUtility {
  /* ThoseWorks  */
  static const String thoseWorks = "thoseWorks";
  static const String thoseWorksQQIsThoseWorks = "isThoseWorks";
  /* TOPDBDVersionWeb */
  static const String TOPDBDVersionWeb = "TOPDBDVersionWeb";
  static const String TOPDBDVersionWebQQVersion = "version";
  /* TOPDBDVersionWindows */
  static const String TOPDBDVersionWindows = "TOPDBDVersionWindows";
  static const String TOPDBDVersionWindowsQQVersion = "version";
  /* User */
  static const String user = "user";
  static const String userQQUniqueId = "uniqueId";
  static const String userQQCreationTime = "creationTime";
  /* DiscordUser as DiscordUserFirestore */
  static const String discordUser = "discordUser";
  static const String discordUserQQUniqueId = "uniqueId";
  static const String discordUserQQUniqueIdByUser = "uniqueIdByUser";
  static const String discordUserQQUsername = "username";
  static const String discordUserQQGlobalName = "globalName";
  /* VerifiedUser */
  static const String verifiedUser = "verifiedUser";
  static const String verifiedUserQQUniqueIdByUser = "uniqueIdByUser";
  static const String verifiedUserQQIsVerifiedUser = "isVerifiedUser";
  /* RoleUser */
  static const String roleUser = "roleUser";
  static const String roleUserQQUniqueIdByUser = "uniqueIdByUser";
  static const String roleUserQQIsAdmin = "isAdmin";
  static const String roleUserQQIsTest = "isTest";
  /* LastLoginTimeUser */
  static const String lastLoginTimeUser = "lastLoginTimeUser";
  static const String lastLoginTimeUserQQUniqueIdByUser = "uniqueIdByUser";
  static const String lastLoginTimeUserQQLastLoginTime = "lastLoginTime";
  /* IPAddress as IPAddressFirestore */
  static const String ipAddress = "ipAddress";
  static const String ipAddressQQUniqueIdByUser = "uniqueIdByUser";
  static const String ipAddressQQIp = "ip";
  /* Country */
  static const String country = "country";
  static const String countryQQUniqueIdByUser = "uniqueIdByUser";
  static const String countryQQNameCountry = "nameCountry";
  /* AboutMe */
  static const String aboutMe = "aboutMe";
  static const String aboutMeQQUniqueIdByUser = "uniqueIdByUser";
  static const String aboutMeQQCodeDBD = "codeDBD";
  /* Season */
  static const String season = "season";
  static const String seasonQQSeasonNumber = "seasonNumber";
  static const String seasonQQStrNumberOfMatchesPlayedPerSeason = "strNumberOfMatchesPlayedPerSeason";
  static const String seasonQQStrNumberOfUniquePlayersWhoPlayedInASeason = "strNumberOfUniquePlayersWhoPlayedInASeason";
  static const String seasonQQStartOfSeasonTime = "startOfSeasonTime";
  static const String seasonQQEndOfSeasonTime = "endOfSeasonTime";
  /* Stats */
  static const String stats = "stats";
  static const String statsQQUniqueIdByUser = "uniqueIdByUser";
  static const String statsQQSeasonNumberBySeason = "seasonNumberBySeason";
  static const String statsQQMatchesWon = "matchesWon";
  static const String statsQQMatchesLost = "matchesLost";
  static const String statsQQRatingPoints = "ratingPoints";
  /* MatchBalance *//*
  static const String matchBalance = "matchBalance";
  static const String matchBalanceQQSeasonNumberBySeason = "seasonNumberBySeason";
  static const String matchBalanceQQNumberOfRounds = "numberOfRounds";
  static const String matchBalanceQQListManiacWhereMatchBalance = "listManiacWhereMatchBalance";
  static const String matchBalanceQQListManiacWhereMatchBalanceQQManiac = "maniac";
  static const String matchBalanceQQListManiacWhereMatchBalanceQQManiacQQName = "name";
  static const String matchBalanceQQListManiacWhereMatchBalanceQQManiacQQImagePath = "imagePath";
  static const String matchBalanceQQListManiacWhereMatchBalanceQQLengthPickManiacPerk = "lengthPickManiacPerk";
  static const String matchBalanceQQListManiacWhereMatchBalanceQQLengthPickSurvivorPerk = "lengthPickSurvivorPerk";
  static const String matchBalanceQQListManiacWhereMatchBalanceQQListMaps = "listMaps";
  static const String matchBalanceQQListManiacWhereMatchBalanceQQListMapsQQName = "name";
  static const String matchBalanceQQListManiacWhereMatchBalanceQQListMapsQQImagePath = "imagePath";
  static const String matchBalanceQQListManiacWhereMatchBalanceQQListManiacPerk = "listManiacPerk";
  static const String matchBalanceQQListManiacWhereMatchBalanceQQListManiacPerkQQPerk = "perk";
  static const String matchBalanceQQListManiacWhereMatchBalanceQQListManiacPerkQQPerkQQName = "name";
  static const String matchBalanceQQListManiacWhereMatchBalanceQQListManiacPerkQQPerkQQImagePath = "imagePath";
  static const String matchBalanceQQListManiacWhereMatchBalanceQQListSurvivorPerk = "listSurvivorPerk";
  static const String matchBalanceQQListManiacWhereMatchBalanceQQListSurvivorPerkQQPerk = "perk";
  static const String matchBalanceQQListManiacWhereMatchBalanceQQListSurvivorPerkQQPerkQQName = "name";
  static const String matchBalanceQQListManiacWhereMatchBalanceQQListSurvivorPerkQQPerkQQImagePath = "imagePath";
  *//* Matches *//*
  static const String matches = "matches";
  static const String matchesQQUniqueId = "uniqueId";
  static const String matchesQQCreationTime = "creationTime";
  static const String matchesQQIsCompleted = "isCompleted";
  static const String matchesQQEnumBanOrPickNamed = "enumBanOrPickNamed";
  static const String matchesQQTextLogAction = "textLogAction";
  static const String matchesQQMatchBalance = "matchBalance";
  static const String matchesQQMatchBalanceQQSeasonNumberBySeason = "seasonNumberBySeason";
  static const String matchesQQMatchBalanceQQNumberOfRounds = "numberOfRounds";
  static const String matchesQQMatchBalanceQQListManiacWhereMatchBalance = "listManiacWhereMatchBalance";
  static const String matchesQQMatchBalanceQQListManiacWhereMatchBalanceQQManiac = "maniac";
  static const String matchesQQMatchBalanceQQListManiacWhereMatchBalanceQQManiacQQName = "name";
  static const String matchesQQMatchBalanceQQListManiacWhereMatchBalanceQQManiacQQImagePath = "imagePath";
  static const String matchesQQMatchBalanceQQListManiacWhereMatchBalanceQQLengthPickManiacPerk = "lengthPickManiacPerk";
  static const String matchesQQMatchBalanceQQListManiacWhereMatchBalanceQQLengthPickSurvivorPerk = "lengthPickSurvivorPerk";
  static const String matchesQQMatchBalanceQQListManiacWhereMatchBalanceQQListMaps = "listMaps";
  static const String matchesQQMatchBalanceQQListManiacWhereMatchBalanceQQListMapsQQName = "name";
  static const String matchesQQMatchBalanceQQListManiacWhereMatchBalanceQQListMapsQQImagePath = "imagePath";
  static const String matchesQQMatchBalanceQQListManiacWhereMatchBalanceQQListManiacPerk = "listManiacPerk";
  static const String matchesQQMatchBalanceQQListManiacWhereMatchBalanceQQListManiacPerkQQPerk = "perk";
  static const String matchesQQMatchBalanceQQListManiacWhereMatchBalanceQQListManiacPerkQQPerkQQName = "name";
  static const String matchesQQMatchBalanceQQListManiacWhereMatchBalanceQQListManiacPerkQQPerkQQImagePath = "imagePath";
  static const String matchesQQMatchBalanceQQListManiacWhereMatchBalanceQQListSurvivorPerk = "listSurvivorPerk";
  static const String matchesQQMatchBalanceQQListManiacWhereMatchBalanceQQListSurvivorPerkQQPerk = "perk";
  static const String matchesQQMatchBalanceQQListManiacWhereMatchBalanceQQListSurvivorPerkQQPerkQQName = "name";
  static const String matchesQQMatchBalanceQQListManiacWhereMatchBalanceQQListSurvivorPerkQQPerkQQImagePath = "imagePath";
  static const String matchesQQUniqueIdByUserWhereFirst = "uniqueIdByUserWhereFirst";
  static const String matchesQQUniqueIdByUserWhereSecond = "uniqueIdByUserWhereSecond";
  static const String matchesQQIsStageBanOrPickForUniqueIdByUserWhereFirst = "isStageBanOrPickForUniqueIdByUserWhereFirst";
  static const String matchesQQListBanManiacWhereMatches = "listBanManiacWhereMatches";
  static const String matchesQQListBanManiacWhereMatchesQQName = "name";
  static const String matchesQQListBanManiacWhereMatchesQQUniqueIdByUser = "uniqueIdByUser";
  static const String matchesQQListPickManiacWhereMatches = "listPickManiacWhereMatches";
  static const String matchesQQListPickManiacWhereMatchesQQName = "name";
  static const String matchesQQListPickManiacWhereMatchesQQUniqueIdByUser = "uniqueIdByUser";
  static const String matchesQQListPickManiacWhereMatchesQQCreationTime = "creationTime";
  static const String matchesQQListPickManiacWhereMatchesQQListBanMapsWhereMatches = "listBanMapsWhereMatches";
  static const String matchesQQListPickManiacWhereMatchesQQListBanMapsWhereMatchesQName = "name";
  static const String matchesQQListPickManiacWhereMatchesQQListBanMapsWhereMatchesQQUniqueIdByUser = "uniqueIdByUser";
  static const String matchesQQListPickManiacWhereMatchesQQPickMapsWhereMatches = "pickMapsWhereMatches";
  static const String matchesQQListPickManiacWhereMatchesQQPickMapsWhereMatchesQQName = "name";
  static const String matchesQQListPickManiacWhereMatchesQQListPickManiacPerkWhereMatches = "listPickManiacPerkWhereMatches";
  static const String matchesQQListPickManiacWhereMatchesQQListPickManiacPerkWhereMatchesQQName = "name";
  static const String matchesQQListPickManiacWhereMatchesQQListPickManiacPerkWhereMatchesQQUniqueIdByUser = "uniqueIdByUser";
  static const String matchesQQListPickManiacWhereMatchesQQListPickSurvivorPerkWhereMatches = "listPickSurvivorPerkWhereMatches";
  static const String matchesQQListPickManiacWhereMatchesQQListPickSurvivorPerkWhereMatchesQQName = "name";
  static const String matchesQQListPickManiacWhereMatchesQQListPickSurvivorPerkWhereMatchesQQUniqueIdByUser = "uniqueIdByUser";
  static const String matchesQQListRoundWhereMatches = "listRoundWhereMatches";
  static const String matchesQQListRoundWhereMatchesQQRound = "round";
  static const String matchesQQListRoundWhereMatchesQQPickManiacWhereMatches = "pickManiacWhereMatches";
  static const String matchesQQListRoundWhereMatchesQQPickManiacWhereMatchesQQName = "name";
  static const String matchesQQListRoundWhereMatchesQQPickManiacWhereMatchesQQUniqueIdByUser = "uniqueIdByUser";
  static const String matchesQQListRoundWhereMatchesQQPickManiacWhereMatchesQQCreationTime = "creationTime";
  static const String matchesQQListRoundWhereMatchesQQPickManiacWhereMatchesQQListBanMapsWhereMatches = "listBanMapsWhereMatches";
  static const String matchesQQListRoundWhereMatchesQQPickManiacWhereMatchesQQListBanMapsWhereMatchesQQName = "name";
  static const String matchesQQListRoundWhereMatchesQQPickManiacWhereMatchesQQListBanMapsWhereMatchesQQUniqueIdByUser = "uniqueIdByUser";
  static const String matchesQQListRoundWhereMatchesQQPickManiacWhereMatchesQQPickMapsWhereMatches = "pickMapsWhereMatches";
  static const String matchesQQListRoundWhereMatchesQQPickManiacWhereMatchesQQPickMapsWhereMatchesQQName = "name";
  static const String matchesQQListRoundWhereMatchesQQPickManiacWhereMatchesQQListPickManiacPerkWhereMatches = "listPickManiacPerkWhereMatches";
  static const String matchesQQListRoundWhereMatchesQQPickManiacWhereMatchesQQListPickManiacPerkWhereMatchesQQName = "name";
  static const String matchesQQListRoundWhereMatchesQQPickManiacWhereMatchesQQListPickManiacPerkWhereMatchesQQUniqueIdByUser = "uniqueIdByUser";
  static const String matchesQQListRoundWhereMatchesQQPickManiacWhereMatchesQQListPickSurvivorPerkWhereMatches = "listPickSurvivorPerkWhereMatches";
  static const String matchesQQListRoundWhereMatchesQQPickManiacWhereMatchesQQListPickSurvivorPerkWhereMatchesQQName = "name";
  static const String matchesQQListRoundWhereMatchesQQPickManiacWhereMatchesQQListPickSurvivorPerkWhereMatchesQQUniqueIdByUser = "uniqueIdByUser";
  static const String matchesQQListRoundWhereMatchesQQEnumTurnOfManiacsAndEndOfTheRound = "enumTurnOfManiacsAndEndOfTheRound";
  static const String matchesQQListRoundWhereMatchesQQIsRoleManiacForUniqueIdByUserWhereFirst = "isRoleManiacForUniqueIdByUserWhereFirst";
  static const String matchesQQListRoundWhereMatchesQQIsStartTimerForUniqueIdByUserWhereFirst = "isStartTimerForUniqueIdByUserWhereFirst";
  static const String matchesQQListRoundWhereMatchesQQIsStartTimerForUniqueIdByUserWhereSecond = "isStartTimerForUniqueIdByUserWhereSecond";
  static const String matchesQQListRoundWhereMatchesQQNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirst = "numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirst";
  static const String matchesQQListRoundWhereMatchesQQNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond = "numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond";
  static const String matchesQQResultRatingPointsForUniqueIdByUserWhereFirst = "resultRatingPointsForUniqueIdByUserWhereFirst";
  static const String matchesQQResultRatingPointsForUniqueIdByUserWhereSecond = "resultRatingPointsForUniqueIdByUserWhereSecond";
*/
  const KeysFirebaseFirestoreServiceUtility._();
}