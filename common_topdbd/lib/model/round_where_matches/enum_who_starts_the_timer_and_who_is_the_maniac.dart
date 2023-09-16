enum EnumWhoStartsTheTimerAndWhoIsTheManiac {
  /// TRUE
  isRoleManiacForUniqueIdByUserWhereFirst,  /// FIRST CLICK (1)
  isNotRoleManiacForUniqueIdByUserWhereSecond, /// SECOND CLICK (2)

  /// FALSE
  isRoleManiacForUniqueIdByUserWhereSecond, /// FIRST CLICK (1)
  isNotRoleManiacForUniqueIdByUserWhereFirst, /// SECOND CLICK (2)

  /// Whoever clicks will end the round
  turnOffTheTimer /// FIRST|SECOND CLICK (3)
}