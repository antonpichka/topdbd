import 'package:common_topdbd/model/ban_maniac_where_matches/ban_maniac_where_matches.dart';
import 'package:common_topdbd/model/ban_maniac_where_matches/list_ban_maniac_where_matches.dart';
import 'package:common_topdbd/model/ban_maps_where_matches/ban_maps_where_matches.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/list_maniac_where_match_balance.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/maniac_where_match_balance.dart';
import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/matches/enum_ban_or_pick_named.dart';
import 'package:common_topdbd/model/matches/enum_how_to_start_a_timer.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/list_pick_maniac_where_matches.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/pick_maniac_where_matches.dart';
import 'package:common_topdbd/model/pick_maps_where_matches/pick_maps_where_matches.dart';
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
  /* DELETE */
  final PickManiacWhereMatches pickManiacWhereMatchesForLastPick;
  final String uniqueIdByUserWhereFirst;
  final String uniqueIdByUserWhereSecond;
  final bool isStageBanOrPickForUniqueIdByUserWhereFirst;
  final bool isRoleManiacForUniqueIdByUserWhereFirst;
  final EnumHowToStartATimer enumHowToStartATimer;
  /*REFACTORING ListPickManiacWhereMatches (one list) ListBanManiacWhereMatches*/
  final ListBanManiacWhereMatches listBanManiacWhereMatchesForUniqueIdByUserWhereFirst;
  final ListBanManiacWhereMatches listBanManiacWhereMatchesForUniqueIdByUserWhereSecond;
  final ListPickManiacWhereMatches listPickManiacWhereMatchesForUniqueIdByUserWhereFirst;
  final ListPickManiacWhereMatches listPickManiacWhereMatchesForUniqueIdByUserWhereSecond;
  final int resultRatingPointsForUniqueIdByUserWhereFirst;
  final int resultRatingPointsForUniqueIdByUserWhereSecond;

  Matches(super.uniqueId, this.creationTime, this.isCompleted, String strBanOrPickNamed,this.numberStageBan,this.numberStagePick,this.textLogAction, this.matchBalance,this.pickManiacWhereMatchesForLastPick, this.uniqueIdByUserWhereFirst, this.uniqueIdByUserWhereSecond, this.isStageBanOrPickForUniqueIdByUserWhereFirst, this.isRoleManiacForUniqueIdByUserWhereFirst, String strHowToStartATimer, this.listBanManiacWhereMatchesForUniqueIdByUserWhereFirst, this.listBanManiacWhereMatchesForUniqueIdByUserWhereSecond, this.listPickManiacWhereMatchesForUniqueIdByUserWhereFirst, this.listPickManiacWhereMatchesForUniqueIdByUserWhereSecond, this.resultRatingPointsForUniqueIdByUserWhereFirst, this.resultRatingPointsForUniqueIdByUserWhereSecond)
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
    if(strBanOrPickNamed == EnumBanOrPickNamed.pickManiacPerkToManiac.name) {
      return EnumBanOrPickNamed.pickManiacPerkToManiac;
    }
    if(strBanOrPickNamed == EnumBanOrPickNamed.pickSurvivorPerkToManiac.name) {
      return EnumBanOrPickNamed.pickSurvivorPerkToManiac;
    }
    return EnumBanOrPickNamed.ready;
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
  Matches get getCloneModel => Matches(uniqueId, creationTime, isCompleted, enumBanOrPickNamed.name, numberStageBan, numberStagePick, textLogAction,matchBalance.getCloneModel,pickManiacWhereMatchesForLastPick.getCloneModel, uniqueIdByUserWhereFirst, uniqueIdByUserWhereSecond, isStageBanOrPickForUniqueIdByUserWhereFirst, isRoleManiacForUniqueIdByUserWhereFirst, enumHowToStartATimer.name, listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel, listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel, listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel, listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel,resultRatingPointsForUniqueIdByUserWhereFirst, resultRatingPointsForUniqueIdByUserWhereSecond);

  ListManiacWhereMatchBalance<ManiacWhereMatchBalance> get getListManiacWhereMatchBalanceWhereBanOrPickParametersFourList {
    final listManiacWhereMatchBalance = matchBalance.listManiacWhereMatchBalance.getCloneListModel;
    final listBanManiacWhereMatches = ListBanManiacWhereMatches<BanManiacWhereMatches>(List.empty(growable: true));
    listBanManiacWhereMatches.insertListToListBanManiacWhereMatches(listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel.listModel);
    listBanManiacWhereMatches.insertListToListBanManiacWhereMatches(listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel.listModel);
    final listPickManiacWhereMatches = ListPickManiacWhereMatches<PickManiacWhereMatches>(List.empty(growable: true));
    listPickManiacWhereMatches.insertListToListPickManiacWhereMatches(listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel.listModel);
    listPickManiacWhereMatches.insertListToListPickManiacWhereMatches(listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel.listModel);
    for(ManiacWhereMatchBalance maniacWhereMatchBalance in matchBalance.listManiacWhereMatchBalance.listModel) {
      for(BanManiacWhereMatches banManiacWhereMatches in listBanManiacWhereMatches.listModel) {
        if(banManiacWhereMatches.name == maniacWhereMatchBalance.maniac.name) {
          listManiacWhereMatchBalance.deleteToListManiacWhereMatchBalance(maniacWhereMatchBalance.uniqueId);
          break;
        }
      }
      for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
        if(pickManiacWhereMatches.name == maniacWhereMatchBalance.maniac.name) {
          listManiacWhereMatchBalance.deleteToListManiacWhereMatchBalance(maniacWhereMatchBalance.uniqueId);
          break;
        }
      }
    }
    return listManiacWhereMatchBalance;
  }

  PickManiacWhereMatches get getLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond {
    final listPickManiacWhereMatches = ListPickManiacWhereMatches<PickManiacWhereMatches>(List.empty(growable: true));
    listPickManiacWhereMatches.insertListToListPickManiacWhereMatches(listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel.listModel);
    listPickManiacWhereMatches.insertListToListPickManiacWhereMatches(listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel.listModel);
    listPickManiacWhereMatches.pickManiacWhereMatchesQWhereOrderByAscParameterCreationTimeIterator();
    return listPickManiacWhereMatches.listModel.last;
  }

  ListMaps<Maps> get getNotBannedListMapsByLastItemManiacWhereMatchBalanceParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond;
    ManiacWhereMatchBalance? newManiacWhereMatchBalance;
    for(ManiacWhereMatchBalance itemManiacWhereMatchBalance in matchBalance.listManiacWhereMatchBalance.listModel) {
      if(lastItemPickManiacWhereMatches.name == itemManiacWhereMatchBalance.maniac.name) {
        newManiacWhereMatchBalance = itemManiacWhereMatchBalance.getCloneModel;
        break;
      }
    }
    ManiacWhereMatchBalance maniacWhereMatchBalance = newManiacWhereMatchBalance!.getCloneModel;
    ManiacWhereMatchBalance maniacWhereMatchBalanceForDelete = newManiacWhereMatchBalance.getCloneModel;
    for(BanMapsWhereMatches banMapsWhereMatches in lastItemPickManiacWhereMatches.listBanMapsWhereMatches.listModel) {
      for(Maps maps in maniacWhereMatchBalance.listMaps.listModel) {
        if(maps.name == banMapsWhereMatches.name) {
          maniacWhereMatchBalanceForDelete
              .listMaps
              .deleteToListMaps(maps.uniqueId);
          break;
        }
      }
    }
    return maniacWhereMatchBalanceForDelete.listMaps;
  }

  ListPickManiacWhereMatches get getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstWhereUpdatePickMapsWhereMatchesParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond;
    final firstItemMapsToNotBannedListMapsByLastItemManiacWhereMatchBalance = getNotBannedListMapsByLastItemManiacWhereMatchBalanceParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel[0];
    final newListPickManiacWhereMatchesForUniqueIdByUserWhereFirst = ListPickManiacWhereMatches<PickManiacWhereMatches>(List.empty(growable: true));
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel) {
      if(lastItemPickManiacWhereMatches.name == pickManiacWhereMatches.name) {
        newListPickManiacWhereMatchesForUniqueIdByUserWhereFirst.insertToListPickManiacWhereMatches(PickManiacWhereMatches(
            pickManiacWhereMatches.name,
            pickManiacWhereMatches.creationTime,
            pickManiacWhereMatches.listBanMapsWhereMatches.getCloneListModel,
            PickMapsWhereMatches(firstItemMapsToNotBannedListMapsByLastItemManiacWhereMatchBalance.name),
            pickManiacWhereMatches.listPickManiacPerkWhereMatches.getCloneListModel,
            pickManiacWhereMatches.listPickSurvivorPerkWhereMatches.getCloneListModel));
        continue;
      }
      newListPickManiacWhereMatchesForUniqueIdByUserWhereFirst
          .insertToListPickManiacWhereMatches(pickManiacWhereMatches.getCloneModel);
    }
    return newListPickManiacWhereMatchesForUniqueIdByUserWhereFirst;
  }

  ListPickManiacWhereMatches get getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondWhereUpdatePickMapsWhereMatchesParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond;
    final firstItemMapsToNotBannedListMapsByLastItemManiacWhereMatchBalance = getNotBannedListMapsByLastItemManiacWhereMatchBalanceParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel[0];
    final newListPickManiacWhereMatchesForUniqueIdByUserWhereSecond = ListPickManiacWhereMatches<PickManiacWhereMatches>(List.empty(growable: true));
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel) {
      if(lastItemPickManiacWhereMatches.name == pickManiacWhereMatches.name) {
        newListPickManiacWhereMatchesForUniqueIdByUserWhereSecond.insertToListPickManiacWhereMatches(PickManiacWhereMatches(
            pickManiacWhereMatches.name,
            pickManiacWhereMatches.creationTime,
            pickManiacWhereMatches.listBanMapsWhereMatches.getCloneListModel,
            PickMapsWhereMatches(firstItemMapsToNotBannedListMapsByLastItemManiacWhereMatchBalance.name),
            pickManiacWhereMatches.listPickManiacPerkWhereMatches.getCloneListModel,
            pickManiacWhereMatches.listPickSurvivorPerkWhereMatches.getCloneListModel));
      }
      newListPickManiacWhereMatchesForUniqueIdByUserWhereSecond
          .insertToListPickManiacWhereMatches(pickManiacWhereMatches.getCloneModel);
    }
    return newListPickManiacWhereMatchesForUniqueIdByUserWhereSecond;
  }

  int get _getNumberOfBannedManiacsParametersListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond {
    return listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel.length +
        listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel.length;
  }

  int get getNumberOfPickManiacsParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond {
    return listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel.length +
        listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel.length;
  }

  void insertBanMapsWhereMatchesToPickManiacWhereMatchesFromMapsParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond(Maps maps) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond;
    bool isPickManiacWhereMatchesForUniqueIdByUserWhereFirst = false;
    int iterationForListPickManiacWhereMatchesForUniqueIdByUserWhereFirst = 0;
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel) {
      if(lastItemPickManiacWhereMatches.name == pickManiacWhereMatches.name) {
        isPickManiacWhereMatchesForUniqueIdByUserWhereFirst = true;
        break;
      }
      iterationForListPickManiacWhereMatchesForUniqueIdByUserWhereFirst++;
    }
    int iterationForListPickManiacWhereMatchesForUniqueIdByUserWhereSecond = 0;
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel) {
      if(lastItemPickManiacWhereMatches.name == pickManiacWhereMatches.name) {
        isPickManiacWhereMatchesForUniqueIdByUserWhereFirst = false;
        break;
      }
      iterationForListPickManiacWhereMatchesForUniqueIdByUserWhereSecond++;
    }
    if(isPickManiacWhereMatchesForUniqueIdByUserWhereFirst) {
      listPickManiacWhereMatchesForUniqueIdByUserWhereFirst
          .listModel[iterationForListPickManiacWhereMatchesForUniqueIdByUserWhereFirst]
          .listBanMapsWhereMatches
          .insertToListBanMapsWhereMatches(BanMapsWhereMatches(maps.name));
      return;
    }
    listPickManiacWhereMatchesForUniqueIdByUserWhereSecond
        .listModel[iterationForListPickManiacWhereMatchesForUniqueIdByUserWhereSecond]
        .listBanMapsWhereMatches
        .insertToListBanMapsWhereMatches(BanMapsWhereMatches(maps.name));
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
        == matchBalance.getTotalNumberOfBannedManiacsInTheFirstStageParametersListManiacWhereMatchBalanceAndNumberOfRounds;
  }

  bool isBannedManiacInTheSecondNumberStageBanParametersNumberStageBanAndMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    return _getNumberOfBannedManiacsParametersListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond
        == matchBalance.getTotalNumberOfBannedManiacsParametersListManiacWhereMatchBalanceAndNumberOfRounds;
  }

  bool isPickedManiacInTheFirstNumberStagePickParametersNumberStagePickAndMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    return getNumberOfPickManiacsParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond
        < matchBalance.getTotalNumberOfPickManiacsInTheFirstStageParameterNumberOfRounds;
  }

  bool isPickedManiacInTheSecondNumberStagePickParametersNumberStagePickAndMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    return getNumberOfPickManiacsParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond
        == matchBalance.numberOfRounds;
  }

  bool isBanMapsEqualsLengthMinusOneParametersMatchBalanceAndListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond;
    ManiacWhereMatchBalance? newManiacWhereMatchBalance;
    for(ManiacWhereMatchBalance maniacWhereMatchBalance in matchBalance.listManiacWhereMatchBalance.listModel) {
      if(lastItemPickManiacWhereMatches.name == maniacWhereMatchBalance.maniac.name) {
        newManiacWhereMatchBalance = maniacWhereMatchBalance.getCloneModel;
        break;
      }
    }
    final lengthByListBanMapsWhereMatchesByLastItemPickManiacWhereMatches = lastItemPickManiacWhereMatches
        .listBanMapsWhereMatches
        .listModel
        .length;
    final lengthByListMapsByNewManiacWhereMatchBalance = newManiacWhereMatchBalance
        ?.listMaps
        .listModel
        .length ?? 0;
    return lengthByListBanMapsWhereMatchesByLastItemPickManiacWhereMatches
       == (lengthByListMapsByNewManiacWhereMatchBalance-1);
  }

  bool isPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond;
    bool isPickManiacWhereMatchesForUniqueIdByUserWhereFirst = false;
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel) {
      if(lastItemPickManiacWhereMatches.name == pickManiacWhereMatches.name) {
        isPickManiacWhereMatchesForUniqueIdByUserWhereFirst = true;
        break;
      }
    }
    if(isPickManiacWhereMatchesForUniqueIdByUserWhereFirst) {
      return isPickManiacWhereMatchesForUniqueIdByUserWhereFirst;
    }
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel) {
      if(lastItemPickManiacWhereMatches.name == pickManiacWhereMatches.name) {
        isPickManiacWhereMatchesForUniqueIdByUserWhereFirst = false;
        break;
      }
    }
    return isPickManiacWhereMatchesForUniqueIdByUserWhereFirst;
  }
}