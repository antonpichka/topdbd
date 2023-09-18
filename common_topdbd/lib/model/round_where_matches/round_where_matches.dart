import 'package:common_topdbd/model/pick_maniac_where_matches/pick_maniac_where_matches.dart';
import 'package:common_topdbd/model/round_where_matches/enum_turn_of_maniacs_and_end_of_the_round.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class RoundWhereMatches extends BaseModel {
  final int round;
  final PickManiacWhereMatches pickManiacWhereMatches;
  final EnumTurnOfManiacsAndEndOfTheRound enumTurnOfManiacsAndEndOfTheRound;
  final bool isRoleManiacForUniqueIdByUserWhereFirst;
  final bool isStartTimerForUniqueIdByUserWhereFirst;
  final bool isStartTimerForUniqueIdByUserWhereSecond;
  final int numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirst;
  final int numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond;

  RoundWhereMatches(this.round,this.pickManiacWhereMatches,String strTurnOfManiacsAndEndOfTheRound,this.isRoleManiacForUniqueIdByUserWhereFirst,this.isStartTimerForUniqueIdByUserWhereFirst,this.isStartTimerForUniqueIdByUserWhereSecond,this.numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirst,this.numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond)
      : enumTurnOfManiacsAndEndOfTheRound = _getFromStrTurnOfManiacsAndEndOfTheRoundParameterEnumTurnOfManiacsAndEndOfTheRound(strTurnOfManiacsAndEndOfTheRound),
        super("$round");

  static EnumTurnOfManiacsAndEndOfTheRound _getFromStrTurnOfManiacsAndEndOfTheRoundParameterEnumTurnOfManiacsAndEndOfTheRound(String strTurnOfManiacsAndEndOfTheRound) {
    if(strTurnOfManiacsAndEndOfTheRound == EnumTurnOfManiacsAndEndOfTheRound.firstManiac.name) {
      return EnumTurnOfManiacsAndEndOfTheRound.firstManiac;
    }
    if(strTurnOfManiacsAndEndOfTheRound == EnumTurnOfManiacsAndEndOfTheRound.secondManiac.name) {
      return EnumTurnOfManiacsAndEndOfTheRound.secondManiac;
    }
    return EnumTurnOfManiacsAndEndOfTheRound.endOfTheRound;
  }

  @override
  RoundWhereMatches get getCloneModel => RoundWhereMatches(round, pickManiacWhereMatches.getCloneModel, enumTurnOfManiacsAndEndOfTheRound.name, isRoleManiacForUniqueIdByUserWhereFirst, isStartTimerForUniqueIdByUserWhereFirst, isStartTimerForUniqueIdByUserWhereSecond, numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirst, numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond);

  /// FIRST USER  | SECOND USER
  /// My Maniac and my turns start timer | Enemy Survivor and wait my maniac
  bool isTrueAndFalseAndNotEqualsEndOfTheRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereFirstAndEnumTurnOfManiacsAndEndOfTheRound() {
    return isRoleManiacForUniqueIdByUserWhereFirst &&
        !isStartTimerForUniqueIdByUserWhereFirst &&
        enumTurnOfManiacsAndEndOfTheRound != EnumTurnOfManiacsAndEndOfTheRound.endOfTheRound;
  }

  /// My Maniac and wait enemy survivor | Enemy Survivor and enemy turns start timer
  bool isTrueAndFalseAndTrueAndNotEqualsEndOfTheRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndIsStartTimerForUniqueIdByUserWhereFirstAndEnumTurnOfManiacsAndEndOfTheRound() {
    return isRoleManiacForUniqueIdByUserWhereFirst &&
        !isStartTimerForUniqueIdByUserWhereSecond &&
        isStartTimerForUniqueIdByUserWhereFirst &&
        enumTurnOfManiacsAndEndOfTheRound != EnumTurnOfManiacsAndEndOfTheRound.endOfTheRound;
  }

  /// My Maniac and stop timer | Enemy Survivor and stop timer
  bool isTrueAndTrueAndTrueAndNotEqualsEndOfTheRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndEnumTurnOfManiacsAndEndOfTheRound() {
    return isRoleManiacForUniqueIdByUserWhereFirst &&
        isStartTimerForUniqueIdByUserWhereFirst &&
        isStartTimerForUniqueIdByUserWhereSecond &&
        enumTurnOfManiacsAndEndOfTheRound != EnumTurnOfManiacsAndEndOfTheRound.endOfTheRound;
  }

  /// My Maniac and next round | Enemy Survivor and next round
  bool isTrueAndEqualsEndOfTheRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndEnumTurnOfManiacsAndEndOfTheRound() {
    return isRoleManiacForUniqueIdByUserWhereFirst &&
        enumTurnOfManiacsAndEndOfTheRound == EnumTurnOfManiacsAndEndOfTheRound.endOfTheRound;
  }

  /// My Survivor and wait enemy maniac | Enemy Maniac and enemy turns start timer
  bool isFalseAndFalseAndNotEqualsEndOfTheRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndEnumTurnOfManiacsAndEndOfTheRound() {
    return !isRoleManiacForUniqueIdByUserWhereFirst &&
        !isStartTimerForUniqueIdByUserWhereSecond &&
        enumTurnOfManiacsAndEndOfTheRound != EnumTurnOfManiacsAndEndOfTheRound.endOfTheRound;
  }

  /// My Survivor and my turns start timer | Enemy Maniac and wait my survivor
  bool isFalseAndFalseAndTrueAndNotEqualsEndOfTheRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndEnumTurnOfManiacsAndEndOfTheRound() {
    return !isRoleManiacForUniqueIdByUserWhereFirst &&
        !isStartTimerForUniqueIdByUserWhereFirst &&
        isStartTimerForUniqueIdByUserWhereSecond &&
        enumTurnOfManiacsAndEndOfTheRound != EnumTurnOfManiacsAndEndOfTheRound.endOfTheRound;
  }

  /// My Survivor and stop timer | Enemy Maniac and stop timer
  bool isFalseAndTrueAndTrueAndNotEqualsEndOfTheRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndEnumTurnOfManiacsAndEndOfTheRound() {
    return !isRoleManiacForUniqueIdByUserWhereFirst &&
        isStartTimerForUniqueIdByUserWhereFirst &&
        isStartTimerForUniqueIdByUserWhereSecond &&
        enumTurnOfManiacsAndEndOfTheRound != EnumTurnOfManiacsAndEndOfTheRound.endOfTheRound;
  }

  /// My Survivor and next round | Enemy Maniac and next round
  bool isFalseAndEqualsEndOfTheRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndEnumTurnOfManiacsAndEndOfTheRound() {
    return !isRoleManiacForUniqueIdByUserWhereFirst &&
        enumTurnOfManiacsAndEndOfTheRound == EnumTurnOfManiacsAndEndOfTheRound.endOfTheRound;
  }
}