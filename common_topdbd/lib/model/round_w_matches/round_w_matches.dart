import 'package:common_topdbd/model/pick_maniac_w_matches/pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/round_w_matches/enum_round_status.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class RoundWMatches extends BaseModel {
  final int round;
  final PickManiacWMatches pickManiacWMatches;
  final EnumRoundStatus enumRoundStatus;
  final bool isRoleManiacWFirstUniqueIdByUser;
  final bool isStartTimerWFirstUniqueIdByUser;
  final bool isStartTimerWSecondUniqueIdByUser;
  final int numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser;
  final int numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser;

  RoundWMatches(this.round,this.pickManiacWMatches,String strRoundStatus,this.isRoleManiacWFirstUniqueIdByUser,this.isStartTimerWFirstUniqueIdByUser,this.isStartTimerWSecondUniqueIdByUser,this.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser,this.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser)
      : enumRoundStatus = _getEnumRoundStatusFromStrRoundStatus(strRoundStatus),
        super("$round");

  static EnumRoundStatus _getEnumRoundStatusFromStrRoundStatus(String strRoundStatus) {
    if(strRoundStatus == EnumRoundStatus.firstManiac.name) {
      return EnumRoundStatus.firstManiac;
    }
    if(strRoundStatus == EnumRoundStatus.secondManiac.name) {
      return EnumRoundStatus.secondManiac;
    }
    if(strRoundStatus == EnumRoundStatus.nextRound.name) {
      return EnumRoundStatus.nextRound;
    }
    return EnumRoundStatus.endOfTheRound;
  }

  @override
  RoundWMatches get getClone => RoundWMatches(round, pickManiacWMatches.getClone, enumRoundStatus.name, isRoleManiacWFirstUniqueIdByUser, isStartTimerWFirstUniqueIdByUser, isStartTimerWSecondUniqueIdByUser, numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser, numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser);

  @override
  String toString() {
    return "RoundWMatches(round: $round, "
        "pickManiacWMatches: $pickManiacWMatches, "
        "enumRoundStatus: ${enumRoundStatus.name}, "
        "isRoleManiacWFirstUniqueIdByUser: $isRoleManiacWFirstUniqueIdByUser, "
        "isStartTimerWFirstUniqueIdByUser: $isStartTimerWFirstUniqueIdByUser, "
        "isStartTimerWSecondUniqueIdByUser: $isStartTimerWSecondUniqueIdByUser, "
        "numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser: $numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser, "
        "numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser: $numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser)";
  }

  EnumRoundStatus get getChangedParameterEnumRoundStatus {
    if(enumRoundStatus == EnumRoundStatus.firstManiac) {
      return EnumRoundStatus.secondManiac;
    }
    if(enumRoundStatus == EnumRoundStatus.secondManiac) {
      return EnumRoundStatus.nextRound;
    }
    return EnumRoundStatus.endOfTheRound;
  }

  bool isWhereSwapParameterIsRoleManiacWFirstUniqueIdByUser() {
    if(isRoleManiacWFirstUniqueIdByUser) {
      return false;
    }
    return true;
  }

  bool isWhereWinRoundWFirstUniqueIdByUserParametersTwo() {
    return numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser > numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser;
  }

  bool isWhereTrueAndFalseAndNotEqualsNextRoundParametersThree() {
    return isRoleManiacWFirstUniqueIdByUser &&
        !isStartTimerWFirstUniqueIdByUser &&
        enumRoundStatus != EnumRoundStatus.nextRound;
  }

  bool isWhereTrueAndTrueAndFalseAndNotEqualsNextRoundParametersFour() {
    return isRoleManiacWFirstUniqueIdByUser &&
        isStartTimerWFirstUniqueIdByUser &&
        !isStartTimerWSecondUniqueIdByUser &&
        enumRoundStatus != EnumRoundStatus.nextRound;
  }

  bool isWhereFalseAndFalseAndNotEqualsNextRoundParametersThree() {
    return !isRoleManiacWFirstUniqueIdByUser &&
        !isStartTimerWSecondUniqueIdByUser &&
        enumRoundStatus != EnumRoundStatus.nextRound;
  }

  bool isWhereFalseAndFalseAndTrueAndNotEqualsNextRoundParametersFour() {
    return !isRoleManiacWFirstUniqueIdByUser &&
        !isStartTimerWFirstUniqueIdByUser &&
        isStartTimerWSecondUniqueIdByUser &&
        enumRoundStatus != EnumRoundStatus.nextRound;
  }

  bool isWhereTrueAndTrueAndNotEqualsNextRoundParametersThree() {
    return isStartTimerWFirstUniqueIdByUser &&
        isStartTimerWSecondUniqueIdByUser &&
        enumRoundStatus != EnumRoundStatus.nextRound;
  }

  bool isWhereEqualsNextRoundParameterEnumRoundStatus() {
    return enumRoundStatus == EnumRoundStatus.nextRound;
  }
}