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
    if(strTurnOfManiacsAndEndOfTheRound == EnumTurnOfManiacsAndEndOfTheRound.nextRound.name) {
      return EnumTurnOfManiacsAndEndOfTheRound.nextRound;
    }
    return EnumTurnOfManiacsAndEndOfTheRound.endOfTheRound;
  }

  @override
  RoundWhereMatches get getClone => RoundWhereMatches(round, pickManiacWhereMatches.getClone, enumTurnOfManiacsAndEndOfTheRound.name, isRoleManiacForUniqueIdByUserWhereFirst, isStartTimerForUniqueIdByUserWhereFirst, isStartTimerForUniqueIdByUserWhereSecond, numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirst, numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond);

  @override
  String toString() {
    return "$round (PickManiacWhereMatches: $pickManiacWhereMatches) "
        "(EnumTurnOfManiacsAndEndOfTheRound: ${enumTurnOfManiacsAndEndOfTheRound.name}) "
        "(isRoleManiacForUniqueIdByUserWhereFirst: $isRoleManiacForUniqueIdByUserWhereFirst) "
        "(isStartTimerForUniqueIdByUserWhereFirst: $isStartTimerForUniqueIdByUserWhereFirst) "
        "(isStartTimerForUniqueIdByUserWhereSecond: $isStartTimerForUniqueIdByUserWhereSecond) "
        "(NumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirst: $numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirst) "
        "(NumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond: $numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond) "
        "(isWinRoundForUniqueIdByUserWhereFirst: ${isWinRoundForUniqueIdByUserWhereFirstParametersNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirstAndNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond()})"
        "\n";
  }

  EnumTurnOfManiacsAndEndOfTheRound get getNextOrEndParameterEnumTurnOfManiacsAndEndOfTheRound {
    if(enumTurnOfManiacsAndEndOfTheRound == EnumTurnOfManiacsAndEndOfTheRound.firstManiac) {
      return EnumTurnOfManiacsAndEndOfTheRound.secondManiac;
    }
    if(enumTurnOfManiacsAndEndOfTheRound == EnumTurnOfManiacsAndEndOfTheRound.secondManiac) {
      return EnumTurnOfManiacsAndEndOfTheRound.nextRound;
    }
    return EnumTurnOfManiacsAndEndOfTheRound.endOfTheRound;
  }

  bool isSwapParameterIsRoleManiacForUniqueIdByUserWhereFirst() {
    if(isRoleManiacForUniqueIdByUserWhereFirst) {
      return false;
    }
    return true;
  }

  bool isWinRoundForUniqueIdByUserWhereFirstParametersNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirstAndNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond() {
    return numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirst > numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond;
  }
  /// FIRST USER  | SECOND USER
  /// My Maniac and my turns start timer | Enemy Survivor and wait my maniac
  bool isTrueAndFalseAndNotEqualsNextRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereFirstAndEnumTurnOfManiacsAndEndOfTheRound() {
    return isRoleManiacForUniqueIdByUserWhereFirst &&
        !isStartTimerForUniqueIdByUserWhereFirst &&
        enumTurnOfManiacsAndEndOfTheRound != EnumTurnOfManiacsAndEndOfTheRound.nextRound;
  }

  /// My Maniac and wait enemy survivor | Enemy Survivor and enemy turns start timer
  bool isTrueAndFalseAndTrueAndNotEqualsNextRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndIsStartTimerForUniqueIdByUserWhereFirstAndEnumTurnOfManiacsAndEndOfTheRound() {
    return isRoleManiacForUniqueIdByUserWhereFirst &&
        !isStartTimerForUniqueIdByUserWhereSecond &&
        isStartTimerForUniqueIdByUserWhereFirst &&
        enumTurnOfManiacsAndEndOfTheRound != EnumTurnOfManiacsAndEndOfTheRound.nextRound;
  }

  /// My Maniac and stop timer | Enemy Survivor and stop timer
  bool isTrueAndTrueAndTrueAndNotEqualsNextRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndEnumTurnOfManiacsAndEndOfTheRound() {
    return isRoleManiacForUniqueIdByUserWhereFirst &&
        isStartTimerForUniqueIdByUserWhereFirst &&
        isStartTimerForUniqueIdByUserWhereSecond &&
        enumTurnOfManiacsAndEndOfTheRound != EnumTurnOfManiacsAndEndOfTheRound.nextRound;
  }

  /// My Maniac and next round | Enemy Survivor and next round
  bool isTrueAndEqualsNextRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndEnumTurnOfManiacsAndEndOfTheRound() {
    return isRoleManiacForUniqueIdByUserWhereFirst &&
        enumTurnOfManiacsAndEndOfTheRound == EnumTurnOfManiacsAndEndOfTheRound.nextRound;
  }

  /// My Survivor and wait enemy maniac | Enemy Maniac and enemy turns start timer
  bool isFalseAndFalseAndNotEqualsNextRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndEnumTurnOfManiacsAndEndOfTheRound() {
    return !isRoleManiacForUniqueIdByUserWhereFirst &&
        !isStartTimerForUniqueIdByUserWhereSecond &&
        enumTurnOfManiacsAndEndOfTheRound != EnumTurnOfManiacsAndEndOfTheRound.nextRound;
  }

  /// My Survivor and my turns start timer | Enemy Maniac and wait my survivor
  bool isFalseAndFalseAndTrueAndNotEqualsNextRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndEnumTurnOfManiacsAndEndOfTheRound() {
    return !isRoleManiacForUniqueIdByUserWhereFirst &&
        !isStartTimerForUniqueIdByUserWhereFirst &&
        isStartTimerForUniqueIdByUserWhereSecond &&
        enumTurnOfManiacsAndEndOfTheRound != EnumTurnOfManiacsAndEndOfTheRound.nextRound;
  }

  /// My Survivor and stop timer | Enemy Maniac and stop timer
  bool isFalseAndTrueAndTrueAndNotEqualsNextRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndEnumTurnOfManiacsAndEndOfTheRound() {
    return !isRoleManiacForUniqueIdByUserWhereFirst &&
        isStartTimerForUniqueIdByUserWhereFirst &&
        isStartTimerForUniqueIdByUserWhereSecond &&
        enumTurnOfManiacsAndEndOfTheRound != EnumTurnOfManiacsAndEndOfTheRound.nextRound;
  }

  /// My Survivor and next round | Enemy Maniac and next round
  bool isFalseAndEqualsNextRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndEnumTurnOfManiacsAndEndOfTheRound() {
    return !isRoleManiacForUniqueIdByUserWhereFirst &&
        enumTurnOfManiacsAndEndOfTheRound == EnumTurnOfManiacsAndEndOfTheRound.nextRound;
  }
}