import 'package:common_topdbd/model/pick_maniac_where_matches/pick_maniac_where_matches.dart';
import 'package:common_topdbd/model/round_where_matches/enum_who_starts_the_timer_and_who_is_the_maniac.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class RoundWhereMatches extends BaseModel {
  final PickManiacWhereMatches pickManiacWhereMatches;
  final EnumWhoStartsTheTimerAndWhoIsTheManiac enumWhoStartsTheTimerAndWhoIsTheManiac;
  final int numberOfSecondsTheSurvivorRanPerRoundsForUniqueIdByUserWhereFirst;
  final int numberOfSecondsTheSurvivorRanPerRoundsForUniqueIdByUserWhereSecond;

  RoundWhereMatches(this.pickManiacWhereMatches,String strWhoStartsTheTimerAndWhoIsTheManiac,this.numberOfSecondsTheSurvivorRanPerRoundsForUniqueIdByUserWhereFirst,this.numberOfSecondsTheSurvivorRanPerRoundsForUniqueIdByUserWhereSecond)
      : enumWhoStartsTheTimerAndWhoIsTheManiac = _getFromStrWhoStartsTheTimerAndWhoIsTheManiacParameterEnumWhoStartsTheTimerAndWhoIsTheManiac(strWhoStartsTheTimerAndWhoIsTheManiac),
        super(pickManiacWhereMatches.uniqueId);

  static EnumWhoStartsTheTimerAndWhoIsTheManiac _getFromStrWhoStartsTheTimerAndWhoIsTheManiacParameterEnumWhoStartsTheTimerAndWhoIsTheManiac(String strWhoStartsTheTimerAndWhoIsTheManiac) {
    if(strWhoStartsTheTimerAndWhoIsTheManiac == EnumWhoStartsTheTimerAndWhoIsTheManiac.isRoleManiacForUniqueIdByUserWhereFirst.name) {
      return EnumWhoStartsTheTimerAndWhoIsTheManiac.isRoleManiacForUniqueIdByUserWhereFirst;
    }
    if(strWhoStartsTheTimerAndWhoIsTheManiac == EnumWhoStartsTheTimerAndWhoIsTheManiac.isNotRoleManiacForUniqueIdByUserWhereSecond.name) {
      return EnumWhoStartsTheTimerAndWhoIsTheManiac.isNotRoleManiacForUniqueIdByUserWhereSecond;
    }
    if(strWhoStartsTheTimerAndWhoIsTheManiac == EnumWhoStartsTheTimerAndWhoIsTheManiac.isRoleManiacForUniqueIdByUserWhereSecond.name) {
      return EnumWhoStartsTheTimerAndWhoIsTheManiac.isRoleManiacForUniqueIdByUserWhereSecond;
    }
    if(strWhoStartsTheTimerAndWhoIsTheManiac == EnumWhoStartsTheTimerAndWhoIsTheManiac.isNotRoleManiacForUniqueIdByUserWhereFirst.name) {
      return EnumWhoStartsTheTimerAndWhoIsTheManiac.isNotRoleManiacForUniqueIdByUserWhereFirst;
    }
    return EnumWhoStartsTheTimerAndWhoIsTheManiac.turnOffTheTimer;
  }

  @override
  RoundWhereMatches get getCloneModel => RoundWhereMatches(pickManiacWhereMatches,enumWhoStartsTheTimerAndWhoIsTheManiac.name, numberOfSecondsTheSurvivorRanPerRoundsForUniqueIdByUserWhereFirst, numberOfSecondsTheSurvivorRanPerRoundsForUniqueIdByUserWhereSecond);
}