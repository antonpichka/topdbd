import 'package:common_topdbd/model/ban_maniac_where_matches/list_ban_maniac_where_matches.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/maniac_where_match_balance.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/matches/enum_ban_or_pick_named.dart';
import 'package:common_topdbd/model/matches/enum_how_to_start_a_timer.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/list_pick_maniac_where_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Matches extends BaseModel {
  final DateTime creationTime;
  final bool isCompleted;
  final EnumBanOrPickNamed enumBanOrPickNamed;
  final String textLogAction;
  final MatchBalance matchBalance;
  final String uniqueIdByUserWhereFirst;
  final String uniqueIdByUserWhereSecond;
  final bool isStageBanOrPickForUniqueIdByUserWhereFirst;
  final bool isRoleManiacForUniqueIdByUserWhereFirst;
  final EnumHowToStartATimer enumHowToStartATimer;
  final ListBanManiacWhereMatches listBanManiacWhereMatchesForUniqueIdByUserWhereFirst;
  final ListBanManiacWhereMatches listBanManiacWhereMatchesForUniqueIdByUserWhereSecond;
  final ListPickManiacWhereMatches listPickManiacWhereMatchesForUniqueIdByUserWhereFirst;
  final ListPickManiacWhereMatches listPickManiacWhereMatchesForUniqueIdByUserWhereSecond;
  final int resultRatingPointsForUniqueIdByUserWhereFirst;
  final int resultRatingPointsForUniqueIdByUserWhereSecond;

  Matches(super.uniqueId, this.creationTime, this.isCompleted, String strBanOrPick, this.textLogAction, this.matchBalance, this.uniqueIdByUserWhereFirst, this.uniqueIdByUserWhereSecond, this.isStageBanOrPickForUniqueIdByUserWhereFirst, this.isRoleManiacForUniqueIdByUserWhereFirst, String strHowToStartATimer, this.listBanManiacWhereMatchesForUniqueIdByUserWhereFirst, this.listBanManiacWhereMatchesForUniqueIdByUserWhereSecond, this.listPickManiacWhereMatchesForUniqueIdByUserWhereFirst, this.listPickManiacWhereMatchesForUniqueIdByUserWhereSecond, this.resultRatingPointsForUniqueIdByUserWhereFirst, this.resultRatingPointsForUniqueIdByUserWhereSecond)
      : enumBanOrPickNamed = _getFromStrBanOrPickNamedToManiacParameterEnumBanOrPickNamed(strBanOrPick),
        enumHowToStartATimer = _getFromStrHowToStartATimerParameterEnumHowToStartATimer(strHowToStartATimer);

  static EnumBanOrPickNamed _getFromStrBanOrPickNamedToManiacParameterEnumBanOrPickNamed(String strBanOrPickNamed) {
    if(strBanOrPickNamed == EnumBanOrPickNamed.banManiac.name) {
      return EnumBanOrPickNamed.banManiac;
    }
    if(strBanOrPickNamed == EnumBanOrPickNamed.pickManiac.name) {
      return EnumBanOrPickNamed.pickManiac;
    }
    if(strBanOrPickNamed == EnumBanOrPickNamed.bansMapsToManiac.name) {
      return EnumBanOrPickNamed.bansMapsToManiac;
    }
    if(strBanOrPickNamed == EnumBanOrPickNamed.pickMapsToManiac.name) {
      return EnumBanOrPickNamed.pickMapsToManiac;
    }
    if(strBanOrPickNamed == EnumBanOrPickNamed.pickManiacPerkToManiac.name) {
      return EnumBanOrPickNamed.pickManiacPerkToManiac;
    }
    if(strBanOrPickNamed == EnumBanOrPickNamed.pickSurvivorPerkToManiac.name) {
      return EnumBanOrPickNamed.pickSurvivorPerkToManiac;
    }
    return EnumBanOrPickNamed.off;
  }

  static EnumHowToStartATimer _getFromStrHowToStartATimerParameterEnumHowToStartATimer(String strHowToStartATimer) {
    if(strHowToStartATimer == EnumHowToStartATimer.isRoleManiacForUniqueIdByUserWhereFirst.name) {
      return EnumHowToStartATimer.isRoleManiacForUniqueIdByUserWhereFirst;
    }
    if(strHowToStartATimer == EnumHowToStartATimer.isNotRoleManiacForUniqueIdByUserWhereSecond.name) {
      return EnumHowToStartATimer.isNotRoleManiacForUniqueIdByUserWhereSecond;
    }
    if(strHowToStartATimer == EnumHowToStartATimer.isRoleManiacForUniqueIdByUserWhereSecond.name) {
      return EnumHowToStartATimer.isRoleManiacForUniqueIdByUserWhereSecond;
    }
    if(strHowToStartATimer == EnumHowToStartATimer.isNotRoleManiacForUniqueIdByUserWhereFirst.name) {
      return EnumHowToStartATimer.isNotRoleManiacForUniqueIdByUserWhereFirst;
    }
    return EnumHowToStartATimer.turnOffTheTimer;
  }

  @override
  Matches get getCloneModel => Matches(uniqueId, creationTime, isCompleted, enumBanOrPickNamed.name, textLogAction,matchBalance.getCloneModel, uniqueIdByUserWhereFirst, uniqueIdByUserWhereSecond, isStageBanOrPickForUniqueIdByUserWhereFirst, isRoleManiacForUniqueIdByUserWhereFirst, enumHowToStartATimer.name, listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel, listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel, listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel, listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel, resultRatingPointsForUniqueIdByUserWhereFirst, resultRatingPointsForUniqueIdByUserWhereSecond);

  int get _getNumberOfBannedManiacsParametersListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond {
    return listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel.length +
        listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel.length;
  }

  int get _getNumberOfPickManiacsParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond {
    return listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel.length +
        listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel.length;
  }

  bool isTrueAndBanManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.banManiac;
  }

  bool isTrueAndPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.pickManiac;
  }

  bool isTrueAndBansMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.bansMapsToManiac;
  }

  bool isTrueAndPickMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.pickMapsToManiac;
  }

  bool isTrueAndPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.pickManiacPerkToManiac;
  }

  bool isTrueAndPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.pickSurvivorPerkToManiac;
  }

  bool isFalseAndBanManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.banManiac;
  }

  bool isFalseAndPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.pickManiac;
  }

  bool isFalseAndBansMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.bansMapsToManiac;
  }

  bool isFalseAndPickMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.pickMapsToManiac;
  }

  bool isFalseAndPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.pickManiacPerkToManiac;
  }

  bool isFalseAndPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.pickSurvivorPerkToManiac;
  }

  bool _isNumberOfBannedManiacsLessTotalNumberOfBannedManiacsInTheFirstStageParametersMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    return _getNumberOfBannedManiacsParametersListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond
        < matchBalance.getTotalNumberOfBannedManiacsInTheFirstStageParametersLengthByListModelByListManiacWhereMatchBalanceAndNumberOfRounds;
  }

  bool _isNumberOfPickManiacsLessTotalNumberOfPickManiacsInTheFirstStageParametersMatchBalanceAndListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    return _getNumberOfPickManiacsParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond
        < matchBalance.getTotalNumberOfPickManiacsInTheFirstStageParameterNumberOfRounds;
  }

  bool _isLengthByListBanMapsLessThanLengthByListMapsByMatchBalanceParametersMatchBalanceAndListPickManiacWhereMatchesForUniqueIdByUserWhereFirst() {
    final lastItemPickManiacWhereMatchesForUniqueIdByUserWhereFirst = listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel.last;
    ManiacWhereMatchBalance? newManiacWhereMatchBalance;
    for(ManiacWhereMatchBalance maniacWhereMatchBalance in matchBalance.listManiacWhereMatchBalance.listModel) {
      if(lastItemPickManiacWhereMatchesForUniqueIdByUserWhereFirst.name == maniacWhereMatchBalance.maniac.name) {
        newManiacWhereMatchBalance = maniacWhereMatchBalance.getCloneModel;
        break;
      }
    }
    final lengthByListBanMapsWhereMatchesByLastItemPickManiacWhereMatchesForUniqueIdByUserWhereFirst = lastItemPickManiacWhereMatchesForUniqueIdByUserWhereFirst
        .listBanMapsWhereMatches
        .listModel
        .length;
    final lengthByListMapsByNewManiacWhereMatchBalance = newManiacWhereMatchBalance
        ?.listMaps
        .listModel
        .length ?? 0;
    return lengthByListBanMapsWhereMatchesByLastItemPickManiacWhereMatchesForUniqueIdByUserWhereFirst
        < (lengthByListMapsByNewManiacWhereMatchBalance-1);
  }
}