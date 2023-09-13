import 'package:common_topdbd/model/ban_maniac_where_matches/ban_maniac_where_matches.dart';
import 'package:common_topdbd/model/ban_maniac_where_matches/list_ban_maniac_where_matches.dart';
import 'package:common_topdbd/model/ban_maps_where_matches/ban_maps_where_matches.dart';
import 'package:common_topdbd/model/ban_maps_where_matches/list_ban_maps_where_matches.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/list_maniac_where_match_balance.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/maniac_where_match_balance.dart';
import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/matches/enum_ban_or_pick_named.dart';
import 'package:common_topdbd/model/matches/enum_how_to_start_a_timer.dart';
import 'package:common_topdbd/model/pick_maniac_perk_where_matches/list_pick_maniac_perk_where_matches.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/list_pick_maniac_where_matches.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/pick_maniac_where_matches.dart';
import 'package:common_topdbd/model/pick_maps_where_matches/pick_maps_where_matches.dart';
import 'package:common_topdbd/model/pick_survivor_perk_where_matches/list_pick_survivor_perk_where_matches.dart';
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
  final ListBanManiacWhereMatches listBanManiacWhereMatches;
  final ListPickManiacWhereMatches listPickManiacWhereMatches;
  final int resultRatingPointsForUniqueIdByUserWhereFirst;
  final int resultRatingPointsForUniqueIdByUserWhereSecond;

  Matches(super.uniqueId, this.creationTime, this.isCompleted, String strBanOrPickNamed,this.textLogAction, this.matchBalance, this.uniqueIdByUserWhereFirst, this.uniqueIdByUserWhereSecond, this.isStageBanOrPickForUniqueIdByUserWhereFirst, this.isRoleManiacForUniqueIdByUserWhereFirst, String strHowToStartATimer, this.listBanManiacWhereMatches, this.listPickManiacWhereMatches, this.resultRatingPointsForUniqueIdByUserWhereFirst, this.resultRatingPointsForUniqueIdByUserWhereSecond)
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
  Matches get getCloneModel => Matches(uniqueId, creationTime, isCompleted, enumBanOrPickNamed.name,textLogAction,matchBalance.getCloneModel, uniqueIdByUserWhereFirst, uniqueIdByUserWhereSecond, isStageBanOrPickForUniqueIdByUserWhereFirst, isRoleManiacForUniqueIdByUserWhereFirst, enumHowToStartATimer.name, listBanManiacWhereMatches.getCloneListModel, listPickManiacWhereMatches.getCloneListModel,resultRatingPointsForUniqueIdByUserWhereFirst, resultRatingPointsForUniqueIdByUserWhereSecond);

  ListPickManiacWhereMatches<PickManiacWhereMatches> get getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst {
    final listPickManiacWhereMatchesForUniqueIdByUserWhereFirst = ListPickManiacWhereMatches<PickManiacWhereMatches>(List.empty(growable: true));
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
      if(pickManiacWhereMatches.uniqueIdByUser == uniqueIdByUserWhereFirst) {
        listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.insertToListPickManiacWhereMatches(pickManiacWhereMatches.getCloneModel);
        continue;
      }
    }
    return listPickManiacWhereMatchesForUniqueIdByUserWhereFirst;
  }

  ListPickManiacWhereMatches<PickManiacWhereMatches> get getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond {
    final listPickManiacWhereMatchesForUniqueIdByUserWhereSecond = ListPickManiacWhereMatches<PickManiacWhereMatches>(List.empty(growable: true));
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
      if(pickManiacWhereMatches.uniqueIdByUser == uniqueIdByUserWhereSecond) {
        listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.insertToListPickManiacWhereMatches(pickManiacWhereMatches.getCloneModel);
        continue;
      }
    }
    return listPickManiacWhereMatchesForUniqueIdByUserWhereSecond;
  }

  ListBanManiacWhereMatches<BanManiacWhereMatches> get getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst {
    final listBanManiacWhereMatchesForUniqueIdByUserWhereFirst = ListBanManiacWhereMatches<BanManiacWhereMatches>(List.empty(growable: true));
    for(BanManiacWhereMatches banManiacWhereMatches in listBanManiacWhereMatches.listModel) {
      if(banManiacWhereMatches.uniqueIdByUser == uniqueIdByUserWhereFirst) {
        listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.insertToListBanManiacWhereMatches(banManiacWhereMatches.getCloneModel);
        continue;
      }
    }
    return listBanManiacWhereMatchesForUniqueIdByUserWhereFirst;
  }

  ListBanManiacWhereMatches<BanManiacWhereMatches> get getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond {
    final listBanManiacWhereMatchesForUniqueIdByUserWhereSecond = ListBanManiacWhereMatches<BanManiacWhereMatches>(List.empty(growable: true));
    for(BanManiacWhereMatches banManiacWhereMatches in listBanManiacWhereMatches.listModel) {
      if(banManiacWhereMatches.uniqueIdByUser == uniqueIdByUserWhereSecond) {
        listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.insertToListBanManiacWhereMatches(banManiacWhereMatches.getCloneModel);
        continue;
      }
    }
    return listBanManiacWhereMatchesForUniqueIdByUserWhereSecond;
  }

  ListManiacWhereMatchBalance<ManiacWhereMatchBalance> get getNotBannedAndPickedListManiacWhereMatchBalanceParametersListBanManiacWhereMatchesAndListPickManiacWhereMatchesAndMatchBalance {
    final listManiacWhereMatchBalance = matchBalance.listManiacWhereMatchBalance.getCloneListModel;
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

  PickManiacWhereMatches get getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches {
    final list = listPickManiacWhereMatches.getCloneListModel;
    list.pickManiacWhereMatchesQWhereOrderByAscParameterCreationTimeIterator();
    return list.listModel.last;
  }

  ListMaps<Maps> get getNotBannedListMapsByLastItemManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
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

  ListPickManiacWhereMatches get getUpdatedPickMapsToListPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final firstItemMapsFromNotBannedListMapsByLastItemManiacWhereMatchBalance = getNotBannedListMapsByLastItemManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance.listModel.last;
    final newListPickManiacWhereMatches = ListPickManiacWhereMatches<PickManiacWhereMatches>(List.empty(growable: true));
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
      if(lastItemPickManiacWhereMatches.name == pickManiacWhereMatches.name) {
        newListPickManiacWhereMatches.insertToListPickManiacWhereMatches(PickManiacWhereMatches(
            pickManiacWhereMatches.name,
            pickManiacWhereMatches.uniqueIdByUser,
            pickManiacWhereMatches.creationTime,
            pickManiacWhereMatches.listBanMapsWhereMatches.getCloneListModel,
            PickMapsWhereMatches(firstItemMapsFromNotBannedListMapsByLastItemManiacWhereMatchBalance.name),
            pickManiacWhereMatches.listPickManiacPerkWhereMatches.getCloneListModel,
            pickManiacWhereMatches.listPickSurvivorPerkWhereMatches.getCloneListModel));
        continue;
      }
      newListPickManiacWhereMatches
          .insertToListPickManiacWhereMatches(pickManiacWhereMatches.getCloneModel);
    }
    return newListPickManiacWhereMatches;
  }

  void insertBanManiacWhereMatchesForUniqueIdByUserWhereFirstFromNameManiacParameterListBanManiacWhereMatches(String nameManiac) {
    listBanManiacWhereMatches
        .insertToListBanManiacWhereMatches(BanManiacWhereMatches(nameManiac,uniqueIdByUserWhereFirst));
  }

  void insertBanManiacWhereMatchesForUniqueIdByUserWhereSecondFromNameManiacParameterListBanManiacWhereMatches(String nameManiac) {
    listBanManiacWhereMatches
        .insertToListBanManiacWhereMatches(BanManiacWhereMatches(nameManiac,uniqueIdByUserWhereSecond));
  }

  void insertPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromNameManiacParameterListPickManiacWhereMatches(String nameManiac) {
    listPickManiacWhereMatches
        .insertToListPickManiacWhereMatches(PickManiacWhereMatches(nameManiac,uniqueIdByUserWhereFirst,DateTime.now(),ListBanMapsWhereMatches(List.empty(growable: true)),PickMapsWhereMatches(""),ListPickManiacPerkWhereMatches(List.empty(growable: true)),ListPickSurvivorPerkWhereMatches(List.empty(growable: true))));
  }

  void insertPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromNameManiacParameterListPickManiacWhereMatches(String nameManiac) {
    listPickManiacWhereMatches
        .insertToListPickManiacWhereMatches(PickManiacWhereMatches(nameManiac,uniqueIdByUserWhereSecond,DateTime.now(),ListBanMapsWhereMatches(List.empty(growable: true)),PickMapsWhereMatches(""),ListPickManiacPerkWhereMatches(List.empty(growable: true)),ListPickSurvivorPerkWhereMatches(List.empty(growable: true))));
  }

  void insertLastPickManiacWhereMatchesParameterListPickManiacWhereMatches() {
    final lastManiacWhereMatchBalance = getNotBannedAndPickedListManiacWhereMatchBalanceParametersListBanManiacWhereMatchesAndListPickManiacWhereMatchesAndMatchBalance.listModel.last;
    listPickManiacWhereMatches
        .insertToListPickManiacWhereMatches(PickManiacWhereMatches(lastManiacWhereMatchBalance.maniac.name,"",DateTime.now(),ListBanMapsWhereMatches(List.empty(growable: true)),PickMapsWhereMatches(""),ListPickManiacPerkWhereMatches(List.empty(growable: true)),ListPickSurvivorPerkWhereMatches(List.empty(growable: true))));
  }

  void insertBanMapsWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromMapsParametersListPickManiacWhereMatches(Maps maps) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    int iterationForListPickManiacWhereMatchesForUniqueIdByUserWhereFirst = 0;
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
      if(lastItemPickManiacWhereMatches.name == pickManiacWhereMatches.name) {
        break;
      }
      iterationForListPickManiacWhereMatchesForUniqueIdByUserWhereFirst++;
    }
    listPickManiacWhereMatches
        .listModel[iterationForListPickManiacWhereMatchesForUniqueIdByUserWhereFirst]
        .listBanMapsWhereMatches
        .insertToListBanMapsWhereMatches(BanMapsWhereMatches(maps.name,uniqueIdByUserWhereFirst));
  }

  void insertBanMapsWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromMapsParametersListPickManiacWhereMatches(Maps maps) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    int iterationForListPickManiacWhereMatchesForUniqueIdByUserWhereSecond = 0;
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
      if(lastItemPickManiacWhereMatches.name == pickManiacWhereMatches.name) {
        break;
      }
      iterationForListPickManiacWhereMatchesForUniqueIdByUserWhereSecond++;
    }
    listPickManiacWhereMatches
        .listModel[iterationForListPickManiacWhereMatchesForUniqueIdByUserWhereSecond]
        .listBanMapsWhereMatches
        .insertToListBanMapsWhereMatches(BanMapsWhereMatches(maps.name,uniqueIdByUserWhereSecond));
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

  bool isDoneFirstStageBanManiacWhereMatchesParametersListBanManiacWhereMatchesAndMatchBalance() {
    return listBanManiacWhereMatches.listModel.length
        == matchBalance.getNeedsResultNumberOfBannedManiacsInTheFirstStageParametersListManiacWhereMatchBalanceAndNumberOfRounds;
  }

  bool isDoneSecondStageBanManiacWhereMatchesParametersListBanManiacWhereMatchesAndMatchBalance() {
    return listBanManiacWhereMatches.listModel.length
        == matchBalance.getNeedsResultNumberOfBannedManiacsParametersListManiacWhereMatchBalanceAndNumberOfRounds;
  }

  bool isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() {
    return listPickManiacWhereMatches.listModel.length
        == (matchBalance.numberOfRounds - 1);
  }

  bool isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() {
    return listPickManiacWhereMatches.listModel.length
        == matchBalance.numberOfRounds;
  }

  bool isBanMapsEqualsLengthMinusOneParametersMatchBalanceAndListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond() {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
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
}