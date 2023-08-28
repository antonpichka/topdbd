final class KeysFirebaseFirestoreServiceUtility {
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

  KeysFirebaseFirestoreServiceUtility._();
}