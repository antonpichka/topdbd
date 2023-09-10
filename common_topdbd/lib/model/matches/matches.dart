import 'package:common_topdbd/model/ban_maniac_where_matches/list_ban_maniac_where_matches.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/maniac_where_match_balance.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/matches/enum_ban_or_pick_named_to_maniac.dart';
import 'package:common_topdbd/model/matches/enum_how_to_start_a_timer.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/list_pick_maniac_where_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Matches extends BaseModel {
  final DateTime creationTime;
  final bool isCompleted;
  final EnumBanOrPickNamedToManiac enumBanOrPickNamedToManiac;
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

  Matches(super.uniqueId, this.creationTime, this.isCompleted, String strBanOrPickNamedToManiac, this.textLogAction, this.matchBalance, this.uniqueIdByUserWhereFirst, this.uniqueIdByUserWhereSecond, this.isStageBanOrPickForUniqueIdByUserWhereFirst, this.isRoleManiacForUniqueIdByUserWhereFirst, String strHowToStartATimer, this.listBanManiacWhereMatchesForUniqueIdByUserWhereFirst, this.listBanManiacWhereMatchesForUniqueIdByUserWhereSecond, this.listPickManiacWhereMatchesForUniqueIdByUserWhereFirst, this.listPickManiacWhereMatchesForUniqueIdByUserWhereSecond, this.resultRatingPointsForUniqueIdByUserWhereFirst, this.resultRatingPointsForUniqueIdByUserWhereSecond)
      : enumBanOrPickNamedToManiac = _getFromStrBanOrPickNamedToManiacParameterEnumBanOrPickNamedToManiac(strBanOrPickNamedToManiac),
        enumHowToStartATimer = _getFromStrHowToStartATimerParameterEnumHowToStartATimer(strHowToStartATimer);

  static EnumBanOrPickNamedToManiac _getFromStrBanOrPickNamedToManiacParameterEnumBanOrPickNamedToManiac(String strBanOrPickNamedToManiac) {
    if(strBanOrPickNamedToManiac == EnumBanOrPickNamedToManiac.banMapsToManiac.name) {
      return EnumBanOrPickNamedToManiac.banMapsToManiac;
    }
    if(strBanOrPickNamedToManiac == EnumBanOrPickNamedToManiac.pickManiacPerkToManiac.name) {
      return EnumBanOrPickNamedToManiac.pickManiacPerkToManiac;
    }
    if(strBanOrPickNamedToManiac == EnumBanOrPickNamedToManiac.pickSurvivorPerkToManiac.name) {
      return EnumBanOrPickNamedToManiac.pickSurvivorPerkToManiac;
    }
    return EnumBanOrPickNamedToManiac.off;
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
  Matches get getCloneModel => Matches(uniqueId, creationTime, isCompleted, enumBanOrPickNamedToManiac.name, textLogAction, matchBalance.getCloneModel, uniqueIdByUserWhereFirst, uniqueIdByUserWhereSecond, isStageBanOrPickForUniqueIdByUserWhereFirst, isRoleManiacForUniqueIdByUserWhereFirst, enumHowToStartATimer.name, listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel, listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel, listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel, listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel, resultRatingPointsForUniqueIdByUserWhereFirst, resultRatingPointsForUniqueIdByUserWhereSecond);

  int get _getNumberOfBannedManiacsParametersListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond {
    return listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel.length +
        listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel.length;
  }

  int get _getNumberOfPickManiacsParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond {
    return listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel.length +
        listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel.length;
  }

  String get getStringWhereLengthByListBanMapsEqualLengthByListMapsByMatchBalanceParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndMatchBalance {
    if(_isLengthByListBanMapsEqualLengthByListMapsByMatchBalanceParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndMatchBalance()) {
      /// KeysExceptionUtility
      return "";
    }
    return "";
  }

  bool _isLengthByListBanMapsEqualLengthByListMapsByMatchBalanceParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndMatchBalance() {
    final lastItemPickManiacWhereMatchesForUniqueIdByUserWhereFirst =  listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel.last;
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
        == (lengthByListMapsByNewManiacWhereMatchBalance-1);
  }

  bool isStageBanOrPickForUniqueIdByUserWhereFirstAndIsNotStagePickAndIsNumberOfBannedManiacsLessTotalNumberOfBannedManiacsInTheFirstStageParametersMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    return isStageBanOrPickForUniqueIdByUserWhereFirst &&
        matchBalance.isNotStagePickParameterIsStagePick() &&
        _isNumberOfBannedManiacsLessTotalNumberOfBannedManiacsInTheFirstStageParametersMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond();
  }

  bool isStageBanOrPickForUniqueIdByUserWhereFirstAndIsStagePickAndIsNumberOfPickManiacsLessTotalNumberOfPickManiacsInTheFirstStageParametersMatchBalanceAndListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    return isStageBanOrPickForUniqueIdByUserWhereFirst &&
        matchBalance.isStagePick &&
        _isNumberOfPickManiacsLessTotalNumberOfPickManiacsInTheFirstStageParametersMatchBalanceAndListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond();
  }

  bool isNotStageBanOrPickForUniqueIdByUserWhereFirstAndIsNotStagePickAndIsNumberOfBannedManiacsLessTotalNumberOfBannedManiacsInTheFirstStageParametersMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    return !isStageBanOrPickForUniqueIdByUserWhereFirst &&
        matchBalance.isNotStagePickParameterIsStagePick() &&
        _isNumberOfBannedManiacsLessTotalNumberOfBannedManiacsInTheFirstStageParametersMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond();
  }

  bool isNotStageBanOrPickForUniqueIdByUserWhereFirstAndIsStagePickAndIsNumberOfPickManiacsLessTotalNumberOfPickManiacsInTheFirstStageParametersMatchBalanceAndListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    return !isStageBanOrPickForUniqueIdByUserWhereFirst &&
        matchBalance.isStagePick &&
        _isNumberOfPickManiacsLessTotalNumberOfPickManiacsInTheFirstStageParametersMatchBalanceAndListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond();
  }

  bool _isNumberOfBannedManiacsLessTotalNumberOfBannedManiacsInTheFirstStageParametersMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    return _getNumberOfBannedManiacsParametersListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond
        < matchBalance.getTotalNumberOfBannedManiacsInTheFirstStageParametersLengthByListModelByListManiacWhereMatchBalanceAndNumberOfRounds;
  }

  bool _isNumberOfPickManiacsLessTotalNumberOfPickManiacsInTheFirstStageParametersMatchBalanceAndListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    return _getNumberOfPickManiacsParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond
        < matchBalance.getTotalNumberOfPickManiacsInTheFirstStageParameterNumberOfRounds;

  }
}