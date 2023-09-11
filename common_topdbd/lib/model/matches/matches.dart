import 'package:common_topdbd/model/ban_maniac_where_matches/ban_maniac_where_matches.dart';
import 'package:common_topdbd/model/ban_maniac_where_matches/list_ban_maniac_where_matches.dart';
import 'package:common_topdbd/model/maniac/list_maniac.dart';
import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/maniac_where_match_balance.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/matches/enum_ban_or_pick_named.dart';
import 'package:common_topdbd/model/matches/enum_how_to_start_a_timer.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/list_pick_maniac_where_matches.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/pick_maniac_where_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Matches extends BaseModel {
  final DateTime creationTime;
  final bool isCompleted;
  final EnumBanOrPickNamed enumBanOrPickNamed;
  final int numberStageBan;
  final int numberStagePick;
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

  Matches(super.uniqueId, this.creationTime, this.isCompleted, String strBanOrPickNamed,this.numberStageBan,this.numberStagePick,this.textLogAction, this.matchBalance, this.uniqueIdByUserWhereFirst, this.uniqueIdByUserWhereSecond, this.isStageBanOrPickForUniqueIdByUserWhereFirst, this.isRoleManiacForUniqueIdByUserWhereFirst, String strHowToStartATimer, this.listBanManiacWhereMatchesForUniqueIdByUserWhereFirst, this.listBanManiacWhereMatchesForUniqueIdByUserWhereSecond, this.listPickManiacWhereMatchesForUniqueIdByUserWhereFirst, this.listPickManiacWhereMatchesForUniqueIdByUserWhereSecond, this.resultRatingPointsForUniqueIdByUserWhereFirst, this.resultRatingPointsForUniqueIdByUserWhereSecond)
      : enumBanOrPickNamed = _getFromStrBanOrPickNamedToManiacParameterEnumBanOrPickNamed(strBanOrPickNamed),
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
  Matches get getCloneModel => Matches(uniqueId, creationTime, isCompleted, enumBanOrPickNamed.name, numberStageBan, numberStagePick, textLogAction,matchBalance.getCloneModel, uniqueIdByUserWhereFirst, uniqueIdByUserWhereSecond, isStageBanOrPickForUniqueIdByUserWhereFirst, isRoleManiacForUniqueIdByUserWhereFirst, enumHowToStartATimer.name, listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel, listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel, listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel, listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel, resultRatingPointsForUniqueIdByUserWhereFirst, resultRatingPointsForUniqueIdByUserWhereSecond);

  ListManiac<Maniac> get getListManiacWhereBanOrPickParametersFourList {
    final listManiac = ListManiac<Maniac>(List.empty(growable: true));
    listManiac.insertListFromListManiacWhereMatchBalanceToListManiac(matchBalance.listManiacWhereMatchBalance.getCloneListModel);
    final listBanManiacWhereMatches = ListBanManiacWhereMatches<BanManiacWhereMatches>(List.empty(growable: true));
    listBanManiacWhereMatches.insertListToListBanManiacWhereMatches(listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel.listModel);
    listBanManiacWhereMatches.insertListToListBanManiacWhereMatches(listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel.listModel);
    final listPickManiacWhereMatches = ListPickManiacWhereMatches<PickManiacWhereMatches>(List.empty(growable: true));
    listPickManiacWhereMatches.insertListToListPickManiacWhereMatches(listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel.listModel);
    listPickManiacWhereMatches.insertListToListPickManiacWhereMatches(listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel.listModel);
    for(ManiacWhereMatchBalance maniacWhereMatchBalance in matchBalance.listManiacWhereMatchBalance.listModel) {
      for(BanManiacWhereMatches banManiacWhereMatches in listBanManiacWhereMatches.listModel) {
        if(banManiacWhereMatches.name == maniacWhereMatchBalance.maniac.name) {
          listManiac.deleteToListManiac(maniacWhereMatchBalance.maniac.uniqueId);
          break;
        }
      }
      for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
        if(pickManiacWhereMatches.name == maniacWhereMatchBalance.maniac.name) {
          listManiac.deleteToListManiac(maniacWhereMatchBalance.maniac.uniqueId);
          break;
        }
      }
    }
    return listManiac;
  }

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

  bool isBannedManiacInTheFirstNumberStageBanParametersNumberStageBanAndMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    return _getNumberOfBannedManiacsParametersListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond
        < matchBalance.getTotalNumberOfBannedManiacsInTheFirstStageParametersListManiacWhereMatchBalanceAndNumberOfRounds &&
        numberStageBan == 1;
  }

  bool isBannedManiacInTheSecondNumberStageBanParametersNumberStageBanAndMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    return _getNumberOfBannedManiacsParametersListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond
        < matchBalance.getTotalNumberOfBannedManiacsParametersListManiacWhereMatchBalanceAndNumberOfRounds &&
        numberStageBan == 2;
  }

  bool isNumberStageBanEqualsTwoParameterNumberStageBan() {
    return numberStageBan == 2;
  }

  bool isPickedManiacInTheFirstNumberStagePickParametersNumberStagePickAndMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    return _getNumberOfPickManiacsParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond
        < matchBalance.getTotalNumberOfPickManiacsInTheFirstStageParameterNumberOfRounds &&
        numberStagePick == 1;
  }

  bool isPickedManiacInTheSecondNumberStagePickParametersNumberStagePickAndMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    return _getNumberOfPickManiacsParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond
        == matchBalance.getTotalNumberOfPickManiacsInTheFirstStageParameterNumberOfRounds &&
        numberStagePick == 2;
  }

  bool isNumberStagePickEqualsTwoParameterNumberStagePick() {
    return numberStagePick == 2;
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