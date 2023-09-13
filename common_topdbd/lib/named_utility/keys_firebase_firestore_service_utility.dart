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
  /* Season */
  static const String season = "season";
  static const String seasonQSeasonNumber = "seasonNumber";
  static const String seasonQStrNumberOfMatchesPlayedPerSeason = "strNumberOfMatchesPlayedPerSeason";
  static const String seasonQStrNumberOfUniquePlayersWhoPlayedInASeason = "strNumberOfUniquePlayersWhoPlayedInASeason";
  static const String seasonQStartOfSeasonTime = "startOfSeasonTime";
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
  static const String matchBalanceQListManiacWhereMatchBalance = "listManiacWhereMatchBalance";
  static const String matchBalanceQListManiacWhereMatchBalanceQManiac = "maniac";
  static const String matchBalanceQListManiacWhereMatchBalanceQManiacQName = "name";
  static const String matchBalanceQListManiacWhereMatchBalanceQManiacQImagePath = "imagePath";
  static const String matchBalanceQListManiacWhereMatchBalanceQLengthPickManiacPerk = "lengthPickManiacPerk";
  static const String matchBalanceQListManiacWhereMatchBalanceQLengthPickSurvivorPerk = "lengthPickSurvivorPerk";
  static const String matchBalanceQListManiacWhereMatchBalanceQListMaps = "listMaps";
  static const String matchBalanceQListManiacWhereMatchBalanceQListMapsQName = "name";
  static const String matchBalanceQListManiacWhereMatchBalanceQListMapsQImagePath = "imagePath";
  static const String matchBalanceQListManiacWhereMatchBalanceQListManiacPerk = "listManiacPerk";
  static const String matchBalanceQListManiacWhereMatchBalanceQListManiacPerkQPerk = "perk";
  static const String matchBalanceQListManiacWhereMatchBalanceQListManiacPerkQPerkQName = "name";
  static const String matchBalanceQListManiacWhereMatchBalanceQListManiacPerkQPerkQImagePath = "imagePath";
  static const String matchBalanceQListManiacWhereMatchBalanceQListSurvivorPerk = "listSurvivorPerk";
  static const String matchBalanceQListManiacWhereMatchBalanceQListSurvivorPerkQPerk = "perk";
  static const String matchBalanceQListManiacWhereMatchBalanceQListSurvivorPerkQPerkQName = "name";
  static const String matchBalanceQListManiacWhereMatchBalanceQListSurvivorPerkQPerkQImagePath = "imagePath";
  /* Matches */
  static const String matches = "matches";
  static const String matchesQUniqueId = "uniqueId";
  static const String matchesQCreationTime = "creationTime";
  static const String matchesQIsCompleted = "isCompleted";
  static const String matchesQEnumBanOrPickNamed = "enumBanOrPickNamed";
  static const String matchesQTextLogAction = "textLogAction";
  static const String matchesQMatchBalance = "matchBalance";
  static const String matchesQMatchBalanceQSeasonNumberBySeason = "seasonNumberBySeason";
  static const String matchesQMatchBalanceQNumberOfRounds = "numberOfRounds";
  static const String matchesQMatchBalanceQListManiacWhereMatchBalance = "listManiacWhereMatchBalance";
  static const String matchesQMatchBalanceQListManiacWhereMatchBalanceQManiac = "maniac";
  static const String matchesQMatchBalanceQListManiacWhereMatchBalanceQManiacQName = "name";
  static const String matchesQMatchBalanceQListManiacWhereMatchBalanceQManiacQImagePath = "imagePath";
  static const String matchesQMatchBalanceQListManiacWhereMatchBalanceQLengthPickManiacPerk = "lengthPickManiacPerk";
  static const String matchesQMatchBalanceQListManiacWhereMatchBalanceQLengthPickSurvivorPerk = "lengthPickSurvivorPerk";
  static const String matchesQMatchBalanceQListManiacWhereMatchBalanceQListMaps = "listMaps";
  static const String matchesQMatchBalanceQListManiacWhereMatchBalanceQListMapsQName = "name";
  static const String matchesQMatchBalanceQListManiacWhereMatchBalanceQListMapsQImagePath = "imagePath";
  static const String matchesQMatchBalanceQListManiacWhereMatchBalanceQListManiacPerk = "listManiacPerk";
  static const String matchesQMatchBalanceQListManiacWhereMatchBalanceQListManiacPerkQPerk = "perk";
  static const String matchesQMatchBalanceQListManiacWhereMatchBalanceQListManiacPerkQPerkQName = "name";
  static const String matchesQMatchBalanceQListManiacWhereMatchBalanceQListManiacPerkQPerkQImagePath = "imagePath";
  static const String matchesQMatchBalanceQListManiacWhereMatchBalanceQListSurvivorPerk = "listSurvivorPerk";
  static const String matchesQMatchBalanceQListManiacWhereMatchBalanceQListSurvivorPerkQPerk = "perk";
  static const String matchesQMatchBalanceQListManiacWhereMatchBalanceQListSurvivorPerkQPerkQName = "name";
  static const String matchesQMatchBalanceQListManiacWhereMatchBalanceQListSurvivorPerkQPerkQImagePath = "imagePath";
  static const String matchesQUniqueIdByUserWhereFirst = "uniqueIdByUserWhereFirst";
  static const String matchesQUniqueIdByUserWhereSecond = "uniqueIdByUserWhereSecond";
  static const String matchesQIsStageBanOrPickForUniqueIdByUserWhereFirst = "isStageBanOrPickForUniqueIdByUserWhereFirst";
  static const String matchesQIsRoleManiacForUniqueIdByUserWhereFirst = "isRoleManiacForUniqueIdByUserWhereFirst";
  static const String matchesQEnumHowToStartATimer = "enumHowToStartATimer";
  static const String matchesQListBanManiacWhereMatches = "listBanManiacWhereMatches";
  static const String matchesQListBanManiacWhereMatchesQName = "name";
  static const String matchesQListBanManiacWhereMatchesQUniqueIdByUser = "uniqueIdByUser";
  static const String matchesQListPickManiacWhereMatches = "listPickManiacWhereMatches";
  static const String matchesQListPickManiacWhereMatchesQName = "name";
  static const String matchesQListPickManiacWhereMatchesQUniqueIdByUser = "uniqueIdByUser";
  static const String matchesQListPickManiacWhereMatchesQCreationTime = "creationTime";
  static const String matchesQListPickManiacWhereMatchesQListBanMapsWhereMatches = "listBanMapsWhereMatches";
  static const String matchesQListPickManiacWhereMatchesQListBanMapsWhereMatchesQName = "name";
  static const String matchesQListPickManiacWhereMatchesQListBanMapsWhereMatchesQUniqueIdByUser = "uniqueIdByUser";
  static const String matchesQListPickManiacWhereMatchesQPickMapsWhereMatches = "pickMapsWhereMatches";
  static const String matchesQListPickManiacWhereMatchesQPickMapsWhereMatchesQName = "name";
  static const String matchesQListPickManiacWhereMatchesQListPickManiacPerkWhereMatches = "listPickManiacPerkWhereMatches";
  static const String matchesQListPickManiacWhereMatchesQListPickManiacPerkWhereMatchesQName = "name";
  static const String matchesQListPickManiacWhereMatchesQListPickManiacPerkWhereMatchesQUniqueIdByUser = "uniqueIdByUser";
  static const String matchesQListPickManiacWhereMatchesQListPickSurvivorPerkWhereMatches = "listPickSurvivorPerkWhereMatches";
  static const String matchesQListPickManiacWhereMatchesQListPickSurvivorPerkWhereMatchesQName = "name";
  static const String matchesQListPickManiacWhereMatchesQListPickSurvivorPerkWhereMatchesQUniqueIdByUser = "uniqueIdByUser";
  static const String matchesQResultRatingPointsForUniqueIdByUserWhereFirst = "resultRatingPointsForUniqueIdByUserWhereFirst";
  static const String matchesQResultRatingPointsForUniqueIdByUserWhereSecond = "resultRatingPointsForUniqueIdByUserWhereSecond";

  const KeysFirebaseFirestoreServiceUtility._();
}