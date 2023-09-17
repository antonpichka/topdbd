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
  final int numberOfMilliSecondsTheSurvivorRanPerRoundsForUniqueIdByUserWhereFirst;
  final int numberOfMilliSecondsTheSurvivorRanPerRoundsForUniqueIdByUserWhereSecond;

  RoundWhereMatches(this.round,this.pickManiacWhereMatches,String strTurnOfManiacsAndEndOfTheRound,this.isRoleManiacForUniqueIdByUserWhereFirst,this.isStartTimerForUniqueIdByUserWhereFirst,this.isStartTimerForUniqueIdByUserWhereSecond,this.numberOfMilliSecondsTheSurvivorRanPerRoundsForUniqueIdByUserWhereFirst,this.numberOfMilliSecondsTheSurvivorRanPerRoundsForUniqueIdByUserWhereSecond)
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
  RoundWhereMatches get getCloneModel => RoundWhereMatches(round, pickManiacWhereMatches.getCloneModel, enumTurnOfManiacsAndEndOfTheRound.name, isRoleManiacForUniqueIdByUserWhereFirst, isStartTimerForUniqueIdByUserWhereFirst, isStartTimerForUniqueIdByUserWhereSecond, numberOfMilliSecondsTheSurvivorRanPerRoundsForUniqueIdByUserWhereFirst, numberOfMilliSecondsTheSurvivorRanPerRoundsForUniqueIdByUserWhereSecond);

  /*  bool isQw(String uniqueIdByUserWhereFirst) {
    if(pickManiacWhereMatches.uniqueIdByUser == uniqueIdByUserWhereFirst) {

    }
  }*/
}