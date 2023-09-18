import 'package:common_topdbd/model/ban_maniac_where_matches/ban_maniac_where_matches.dart';
import 'package:common_topdbd/model/ban_maniac_where_matches/list_ban_maniac_where_matches.dart';
import 'package:common_topdbd/model/ban_maps_where_matches/ban_maps_where_matches.dart';
import 'package:common_topdbd/model/ban_maps_where_matches/list_ban_maps_where_matches.dart';
import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/list_maniac_where_match_balance.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/maniac_where_match_balance.dart';
import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/matches/enum_ban_or_pick_named.dart';
import 'package:common_topdbd/model/pick_maniac_perk_where_matches/list_pick_maniac_perk_where_matches.dart';
import 'package:common_topdbd/model/pick_maniac_perk_where_matches/pick_maniac_perk_where_matches.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/list_pick_maniac_where_matches.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/pick_maniac_where_matches.dart';
import 'package:common_topdbd/model/pick_maps_where_matches/pick_maps_where_matches.dart';
import 'package:common_topdbd/model/pick_survivor_perk_where_matches/list_pick_survivor_perk_where_matches.dart';
import 'package:common_topdbd/model/pick_survivor_perk_where_matches/pick_survivor_perk_where_matches.dart';
import 'package:common_topdbd/model/round_where_matches/enum_turn_of_maniacs_and_end_of_the_round.dart';
import 'package:common_topdbd/model/round_where_matches/list_round_where_matches.dart';
import 'package:common_topdbd/model/round_where_matches/round_where_matches.dart';
import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
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
  final ListBanManiacWhereMatches listBanManiacWhereMatches;
  final ListPickManiacWhereMatches listPickManiacWhereMatches;
  final ListRoundWhereMatches listRoundWhereMatches;
  final int resultRatingPointsForUniqueIdByUserWhereFirst;
  final int resultRatingPointsForUniqueIdByUserWhereSecond;

  Matches(super.uniqueId, this.creationTime, this.isCompleted, String strBanOrPickNamed,this.textLogAction, this.matchBalance, this.uniqueIdByUserWhereFirst, this.uniqueIdByUserWhereSecond, this.isStageBanOrPickForUniqueIdByUserWhereFirst, this.listBanManiacWhereMatches, this.listPickManiacWhereMatches, this.listRoundWhereMatches, this.resultRatingPointsForUniqueIdByUserWhereFirst, this.resultRatingPointsForUniqueIdByUserWhereSecond)
      : enumBanOrPickNamed = _getFromStrBanOrPickNamedToManiacParameterEnumBanOrPickNamed(strBanOrPickNamed);

  static EnumBanOrPickNamed _getFromStrBanOrPickNamedToManiacParameterEnumBanOrPickNamed(String strBanOrPickNamed) {
    if(strBanOrPickNamed == EnumBanOrPickNamed.systemPickManiac.name) {
      return EnumBanOrPickNamed.systemPickManiac;
    }
    if(strBanOrPickNamed == EnumBanOrPickNamed.systemPickMapsToManiac.name) {
      return EnumBanOrPickNamed.systemPickMapsToManiac;
    }
    if(strBanOrPickNamed == EnumBanOrPickNamed.systemPickManiacPerkToManiac.name) {
      return EnumBanOrPickNamed.systemPickManiacPerkToManiac;
    }
    if(strBanOrPickNamed == EnumBanOrPickNamed.systemPickSurvivorPerkToManiac.name) {
      return EnumBanOrPickNamed.systemPickSurvivorPerkToManiac;
    }
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

  @override
  Matches get getCloneModel => Matches(uniqueId, creationTime, isCompleted, enumBanOrPickNamed.name,textLogAction,matchBalance.getCloneModel, uniqueIdByUserWhereFirst, uniqueIdByUserWhereSecond, isStageBanOrPickForUniqueIdByUserWhereFirst,listBanManiacWhereMatches.getCloneListModel, listPickManiacWhereMatches.getCloneListModel,listRoundWhereMatches.getCloneListModel,resultRatingPointsForUniqueIdByUserWhereFirst, resultRatingPointsForUniqueIdByUserWhereSecond);

  ListPickManiacWhereMatches<PickManiacWhereMatches> get getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst {
    return getListPickManiacWhereMatchesForUniqueIdByUserParameterListPickManiacWhereMatches(uniqueIdByUserWhereFirst);
  }

  ListPickManiacWhereMatches<PickManiacWhereMatches> get getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond {
    return getListPickManiacWhereMatchesForUniqueIdByUserParameterListPickManiacWhereMatches(uniqueIdByUserWhereSecond);
  }

  ListPickManiacWhereMatches<PickManiacWhereMatches> get getListPickManiacWhereMatchesNotUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecond {
    final listPickManiacWhereMatchesNotUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecond = ListPickManiacWhereMatches<PickManiacWhereMatches>(List.empty(growable: true));
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
      if(pickManiacWhereMatches.uniqueIdByUser != uniqueIdByUserWhereFirst
          && pickManiacWhereMatches.uniqueIdByUser != uniqueIdByUserWhereSecond)
      {
        listPickManiacWhereMatchesNotUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecond.insertToListPickManiacWhereMatches(pickManiacWhereMatches.getCloneModel);
        continue;
      }
    }
    return listPickManiacWhereMatchesNotUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecond;
  }

  ListBanManiacWhereMatches<BanManiacWhereMatches> get getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst {
    return getListBanManiacWhereMatchesForUniqueIdByUserParameterListBanManiacWhereMatches(uniqueIdByUserWhereFirst);
  }

  ListBanManiacWhereMatches<BanManiacWhereMatches> get getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond {
    return getListBanManiacWhereMatchesForUniqueIdByUserParameterListBanManiacWhereMatches(uniqueIdByUserWhereSecond);
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
    return listPickManiacWhereMatches.getCloneListModel.listModel.last;
  }

  ManiacWhereMatchBalance get getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    ManiacWhereMatchBalance? newManiacWhereMatchBalance;
    for(ManiacWhereMatchBalance maniacWhereMatchBalance in matchBalance.listManiacWhereMatchBalance.listModel) {
      if(maniacWhereMatchBalance.maniac.name == lastItemPickManiacWhereMatches.name) {
        newManiacWhereMatchBalance = maniacWhereMatchBalance.getCloneModel;
        break;
      }
    }
    return newManiacWhereMatchBalance!;
  }

  ListMaps<Maps> get getNotBannedListMapsByLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    ManiacWhereMatchBalance maniacWhereMatchBalanceForLastItemPickManiacWhereMatchesForDelete = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.getCloneModel;
    for(BanMapsWhereMatches banMapsWhereMatches in lastItemPickManiacWhereMatches.listBanMapsWhereMatches.listModel) {
      for(Maps maps in maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listMaps.listModel) {
        if(maps.name == banMapsWhereMatches.name) {
          maniacWhereMatchBalanceForLastItemPickManiacWhereMatchesForDelete
              .listMaps
              .deleteToListMaps(maps.uniqueId);
          break;
        }
      }
    }
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatchesForDelete.listMaps;
  }

  Maps get getLastItemMapsFromNotBannedListMapsByLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance {
    return getNotBannedListMapsByLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance.listModel.last;
  }

  PickManiacWhereMatches get getUpdatedLastItemPickMapsWhereMatchesToListPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final lastItemMapsFromNotBannedListMapsByLastItemPickManiacWhereMatches = getLastItemMapsFromNotBannedListMapsByLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance;
    return PickManiacWhereMatches(
        lastItemPickManiacWhereMatches.name,
        lastItemPickManiacWhereMatches.uniqueIdByUser,
        lastItemPickManiacWhereMatches.creationTime,
        lastItemPickManiacWhereMatches.listBanMapsWhereMatches.getCloneListModel,
        PickMapsWhereMatches(lastItemMapsFromNotBannedListMapsByLastItemPickManiacWhereMatches.name),
        lastItemPickManiacWhereMatches.listPickManiacPerkWhereMatches.getCloneListModel,
        lastItemPickManiacWhereMatches.listPickSurvivorPerkWhereMatches.getCloneListModel);
  }

  ListManiacPerk<ManiacPerk> get getListManiacPerkForLastItemPickManiacWhereMatchesParameterMatchBalance {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listManiacPerk;
  }

  ListManiacPerk<ManiacPerk> get getNotPickedListManiacPerkForUniqueIdByUserWhereFirstParameterListPickManiacWhereMatchesAndMatchBalance {
    return getNotPickedListManiacPerkForUniqueIdByUserParameterListPickManiacWhereMatchesAndMatchBalance(uniqueIdByUserWhereFirst);
  }

  ListManiacPerk<ManiacPerk> get getNotPickedListManiacPerkForUniqueIdByUserWhereSecondParameterListPickManiacWhereMatchesAndMatchBalance {
    return getNotPickedListManiacPerkForUniqueIdByUserParameterListPickManiacWhereMatchesAndMatchBalance(uniqueIdByUserWhereSecond);
  }

  ListSurvivorPerk<SurvivorPerk> get getListSurvivorPerkForLastItemPickManiacWhereMatchesParameterMatchBalance {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listSurvivorPerk;
  }

  ListSurvivorPerk<SurvivorPerk> get getNotPickedListSurvivorPerkForUniqueIdByUserWhereFirstParameterListPickManiacWhereMatchesAndMatchBalance {
    return getNotPickedListSurvivorPerkForUniqueIdByUserParameterListPickManiacWhereMatchesAndMatchBalance(uniqueIdByUserWhereFirst);
  }

  ListSurvivorPerk<SurvivorPerk> get getNotPickedListSurvivorPerkForUniqueIdByUserWhereSecondParameterListPickManiacWhereMatchesAndMatchBalance {
    return getNotPickedListSurvivorPerkForUniqueIdByUserParameterListPickManiacWhereMatchesAndMatchBalance(uniqueIdByUserWhereSecond);
  }

  ListRoundWhereMatches<RoundWhereMatches> get getListOneItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches {
    final enumTurnOfManiacsAndEndOfTheRoundWhereEndOfTheRound = EnumTurnOfManiacsAndEndOfTheRound.endOfTheRound;
    final newListRoundWhereMatches = ListRoundWhereMatches<RoundWhereMatches>(List.empty(growable: true));
    for(RoundWhereMatches roundWhereMatches in listRoundWhereMatches.listModel) {
      if(roundWhereMatches.enumTurnOfManiacsAndEndOfTheRound == enumTurnOfManiacsAndEndOfTheRoundWhereEndOfTheRound) {
        continue;
      }
      newListRoundWhereMatches.insertToListRoundWhereMatches(roundWhereMatches.getCloneModel);
      break;
    }
    return newListRoundWhereMatches;
  }

  RoundWhereMatches get getUnfinishedRoundWhereMatchesParameterListRoundWhereMatches {
    return getListOneItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.listModel[0];
  }

  String get getUniqueIdByUserWhoRoleManiacParameterListRoundWhereMatches {
    if(getUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.isRoleManiacForUniqueIdByUserWhereFirst) {
      return uniqueIdByUserWhereFirst;
    }
    return uniqueIdByUserWhereSecond;
  }

  @protected
  ListPickManiacWhereMatches<PickManiacWhereMatches> getListPickManiacWhereMatchesForUniqueIdByUserParameterListPickManiacWhereMatches(String uniqueIdByUser) {
    final listPickManiacWhereMatchesForUniqueIdByUser = ListPickManiacWhereMatches<PickManiacWhereMatches>(List.empty(growable: true));
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
      if(pickManiacWhereMatches.uniqueIdByUser == uniqueIdByUser) {
        listPickManiacWhereMatchesForUniqueIdByUser.insertToListPickManiacWhereMatches(pickManiacWhereMatches.getCloneModel);
        continue;
      }
    }
    return listPickManiacWhereMatchesForUniqueIdByUser;
  }

  @protected
  ListBanManiacWhereMatches<BanManiacWhereMatches> getListBanManiacWhereMatchesForUniqueIdByUserParameterListBanManiacWhereMatches(String uniqueIdByUser) {
    final listBanManiacWhereMatchesForUniqueIdByUser = ListBanManiacWhereMatches<BanManiacWhereMatches>(List.empty(growable: true));
    for(BanManiacWhereMatches banManiacWhereMatches in listBanManiacWhereMatches.listModel) {
      if(banManiacWhereMatches.uniqueIdByUser == uniqueIdByUser) {
        listBanManiacWhereMatchesForUniqueIdByUser.insertToListBanManiacWhereMatches(banManiacWhereMatches.getCloneModel);
        continue;
      }
    }
    return listBanManiacWhereMatchesForUniqueIdByUser;
  }

  @protected
  ListManiacPerk<ManiacPerk> getNotPickedListManiacPerkForUniqueIdByUserParameterListPickManiacWhereMatchesAndMatchBalance(String uniqueIdByUser) {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final listManiacPerkForDelete = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listManiacPerk.getCloneListModel;
    for(PickManiacPerkWhereMatches pickManiacPerkWhereMatches in lastItemPickManiacWhereMatches.listPickManiacPerkWhereMatches.getListPickManiacPerkWhereMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)) {
      listManiacPerkForDelete.deleteToListManiacPerk(pickManiacPerkWhereMatches.uniqueId);
    }
    return listManiacPerkForDelete;
  }

  @protected
  ListSurvivorPerk<SurvivorPerk> getNotPickedListSurvivorPerkForUniqueIdByUserParameterListPickManiacWhereMatchesAndMatchBalance(String uniqueIdByUser) {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final listSurvivorPerkForDelete = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listSurvivorPerk.getCloneListModel;
    for(PickSurvivorPerkWhereMatches pickSurvivorPerkWhereMatches in lastItemPickManiacWhereMatches.listPickSurvivorPerkWhereMatches.getListPickSurvivorPerkWhereMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)) {
      listSurvivorPerkForDelete.deleteToListSurvivorPerk(pickSurvivorPerkWhereMatches.uniqueId);
    }
    return listSurvivorPerkForDelete;
  }

  void insertListPickManiacPerkWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
      if(pickManiacWhereMatches.name == lastItemPickManiacWhereMatches.name) {
        for(ManiacPerk maniacPerk in maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listManiacPerk.listModel) {
          pickManiacWhereMatches
              .listPickManiacPerkWhereMatches
              .insertToListPickManiacPerkWhereMatches(PickManiacPerkWhereMatches(maniacPerk.perk.name,uniqueIdByUserWhereFirst));
          pickManiacWhereMatches
              .listPickManiacPerkWhereMatches
              .insertToListPickManiacPerkWhereMatches(PickManiacPerkWhereMatches(maniacPerk.perk.name,uniqueIdByUserWhereSecond));
        }
        break;
      }
    }
  }

  void insertListPickSurvivorPerkWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
      if(pickManiacWhereMatches.name == lastItemPickManiacWhereMatches.name) {
        for(SurvivorPerk survivorPerk in maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listSurvivorPerk.listModel) {
          pickManiacWhereMatches
              .listPickSurvivorPerkWhereMatches
              .insertToListPickSurvivorPerkWhereMatches(PickSurvivorPerkWhereMatches(survivorPerk.perk.name,uniqueIdByUserWhereFirst));
          pickManiacWhereMatches
              .listPickSurvivorPerkWhereMatches
              .insertToListPickSurvivorPerkWhereMatches(PickSurvivorPerkWhereMatches(survivorPerk.perk.name,uniqueIdByUserWhereSecond));
        }
        break;
      }
    }
  }

  void insertListRoundWhereMatchesParameterListRoundWhereMatches() {
    listPickManiacWhereMatches.pickManiacWhereMatchesQWhereOrderByAscParameterCreationTimeIterator();
    int round = 1;
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
      final isRoleManiacUniqueIdByUserWhereFirst =
          pickManiacWhereMatches.uniqueIdByUser == uniqueIdByUserWhereFirst
              ? true
              : false;
      listRoundWhereMatches.insertToListRoundWhereMatches(RoundWhereMatches(
          round,
          pickManiacWhereMatches.getCloneModel,
          EnumTurnOfManiacsAndEndOfTheRound.firstManiac.name,
          isRoleManiacUniqueIdByUserWhereFirst,
          false,
          false,
          0,
          0));
      round++;
    }
  }

  void updatePickMapsWhereMatchesParameterListPickManiacWhereMatches() {
    listPickManiacWhereMatches
        .updateToListPickManiacWhereMatches(getUpdatedLastItemPickMapsWhereMatchesToListPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance);
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
    final notBannedAndPickedListManiacWhereMatchBalance = getNotBannedAndPickedListManiacWhereMatchBalanceParametersListBanManiacWhereMatchesAndListPickManiacWhereMatchesAndMatchBalance;
    final lastManiacWhereMatchBalance = notBannedAndPickedListManiacWhereMatchBalance.listModel.last;
    listPickManiacWhereMatches
        .insertToListPickManiacWhereMatches(PickManiacWhereMatches(lastManiacWhereMatchBalance.maniac.name,"",DateTime.now(),ListBanMapsWhereMatches(List.empty(growable: true)),PickMapsWhereMatches(""),ListPickManiacPerkWhereMatches(List.empty(growable: true)),ListPickSurvivorPerkWhereMatches(List.empty(growable: true))));
  }

  void insertBanMapsWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromMapsParameterListPickManiacWhereMatches(Maps maps) {
    insertBanMapsWhereMatchesToPickManiacWhereMatchesFromMapsParameterListPickManiacWhereMatches(maps,uniqueIdByUserWhereFirst);
  }

  void insertBanMapsWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromMapsParameterListPickManiacWhereMatches(Maps maps) {
    insertBanMapsWhereMatchesToPickManiacWhereMatchesFromMapsParameterListPickManiacWhereMatches(maps,uniqueIdByUserWhereSecond);
  }

  void insertManiacPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromManiacPerkParameterListPickManiacWhereMatches(ManiacPerk maniacPerk) {
    insertManiacPerkWhereMatchesToPickManiacWhereMatchesFromManiacPerkParameterListPickManiacWhereMatches(maniacPerk,uniqueIdByUserWhereFirst);
  }

  void insertManiacPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromManiacPerkParameterListPickManiacWhereMatches(ManiacPerk maniacPerk) {
    insertManiacPerkWhereMatchesToPickManiacWhereMatchesFromManiacPerkParameterListPickManiacWhereMatches(maniacPerk,uniqueIdByUserWhereSecond);
  }

  void insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromSurvivorPerkParameterListPickManiacWhereMatches(SurvivorPerk survivorPerk) {
    insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesFromSurvivorPerkParameterListPickManiacWhereMatches(survivorPerk,uniqueIdByUserWhereFirst);
  }

  void insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromSurvivorPerkParameterListPickManiacWhereMatches(SurvivorPerk survivorPerk) {
    insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesFromSurvivorPerkParameterListPickManiacWhereMatches(survivorPerk,uniqueIdByUserWhereSecond);
  }

  @protected
  void insertBanMapsWhereMatchesToPickManiacWhereMatchesFromMapsParameterListPickManiacWhereMatches(Maps maps,String uniqueIdByUser) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    int iterationForListPickManiacWhereMatches = 0;
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
      if(lastItemPickManiacWhereMatches.name == pickManiacWhereMatches.name) {
        break;
      }
      iterationForListPickManiacWhereMatches++;
    }
    listPickManiacWhereMatches
        .listModel[iterationForListPickManiacWhereMatches]
        .listBanMapsWhereMatches
        .insertToListBanMapsWhereMatches(BanMapsWhereMatches(maps.name,uniqueIdByUser));
  }

  @protected
  void insertManiacPerkWhereMatchesToPickManiacWhereMatchesFromManiacPerkParameterListPickManiacWhereMatches(ManiacPerk maniacPerk,String uniqueIdByUser) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    int iterationForListPickManiacWhereMatches = 0;
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
      if(lastItemPickManiacWhereMatches.name == pickManiacWhereMatches.name) {
        break;
      }
      iterationForListPickManiacWhereMatches++;
    }
    listPickManiacWhereMatches
        .listModel[iterationForListPickManiacWhereMatches]
        .listPickManiacPerkWhereMatches
        .insertToListPickManiacPerkWhereMatches(PickManiacPerkWhereMatches(maniacPerk.perk.name,uniqueIdByUser));
  }

  @protected
  void insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesFromSurvivorPerkParameterListPickManiacWhereMatches(SurvivorPerk survivorPerk,String uniqueIdByUser) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    int iterationForListPickManiacWhereMatches = 0;
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
      if(lastItemPickManiacWhereMatches.name == pickManiacWhereMatches.name) {
        break;
      }
      iterationForListPickManiacWhereMatches++;
    }
    listPickManiacWhereMatches
        .listModel[iterationForListPickManiacWhereMatches]
        .listPickSurvivorPerkWhereMatches
        .insertToListPickSurvivorPerkWhereMatches(PickSurvivorPerkWhereMatches(survivorPerk.perk.name,uniqueIdByUser));
  }

  bool isTrueAndSystemPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.systemPickManiac;
  }

  bool isTrueAndSystemPickMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.systemPickMapsToManiac;
  }

  bool isTrueAndSystemPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.systemPickManiacPerkToManiac;
  }

  bool isTrueAndSystemPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.systemPickSurvivorPerkToManiac;
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

  bool isFalseAndSystemPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.systemPickManiac;
  }

  bool isFalseAndSystemPickMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.systemPickMapsToManiac;
  }

  bool isFalseAndSystemPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.systemPickManiacPerkToManiac;
  }

  bool isFalseAndSystemPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageBanOrPickForUniqueIdByUserWhereFirst &&
        enumBanOrPickNamed == EnumBanOrPickNamed.systemPickSurvivorPerkToManiac;
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

  bool isBanMapsEqualsLengthTakeOneMapsByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    final lengthByListBanMapsWhereMatchesByLastItemPickManiacWhereMatches = lastItemPickManiacWhereMatches
        .listBanMapsWhereMatches
        .listModel
        .length;
    final lengthByListMapsByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches
        .listMaps
        .listModel
        .length;
    return lengthByListBanMapsWhereMatchesByLastItemPickManiacWhereMatches
       == (lengthByListMapsByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches-1);
  }

  bool isNotEmptyByListManiacPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance() {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatches
        .listManiacPerk
        .listModel
        .isNotEmpty;
  }

  bool isNotEmptyByListSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance() {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatches
        .listSurvivorPerk
        .listModel
        .isNotEmpty;
  }

  bool isLengthPickMPNotEqualsLengthListMPByLastManiacWhereMatchBalanceParameterMatchBalance() {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.isLengthPickMPNotEqualsLengthListMPParametersLengthPickManiacPerkAndListManiacPerk();
  }

  bool isLengthPickSPNotEqualsLengthListSPByLastManiacWhereMatchBalanceParameterMatchBalance() {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.isLengthPickSPNotEqualsLengthListSPParametersLengthPickSurvivorPerkAndListSurvivorPerk();
  }

  bool isLengthPickSPEqualsLengthListSPAndIsNotEmptyListSPByLastManiacWhereMatchBalanceParameterMatchBalance() {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.isLengthPickSPEqualsLengthListSPAndIsNotEmptyListSPParametersLengthPickSurvivorPerkAndListSurvivorPerk();
  }

  bool isPickManiacPerkForUniqueIdByUserWhereFirstEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickManiacPerkEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(uniqueIdByUserWhereFirst);
  }

  bool isPickManiacPerkForUniqueIdByUserWhereSecondEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickManiacPerkEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(uniqueIdByUserWhereSecond);
  }

  bool isPickManiacPerkForUniqueIdByUserWhereFirstNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickManiacPerkNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(uniqueIdByUserWhereFirst);
  }

  bool isPickManiacPerkForUniqueIdByUserWhereSecondNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickManiacPerkNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(uniqueIdByUserWhereSecond);
  }

  bool isPickSurvivorPerkForUniqueIdByUserWhereFirstEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickSurvivorPerkEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(uniqueIdByUserWhereFirst);
  }

  bool isPickSurvivorPerkForUniqueIdByUserWhereSecondEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickSurvivorPerkEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(uniqueIdByUserWhereSecond);
  }

  bool isPickSurvivorPerkForUniqueIdByUserWhereFirstNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickSurvivorPerkNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(uniqueIdByUserWhereFirst);
  }

  bool isPickSurvivorPerkForUniqueIdByUserWhereSecondNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickSurvivorPerkNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(uniqueIdByUserWhereSecond);
  }

  bool isUniqueIdByUserWhereFirstManiacAndUniqueIdByUserWhereFirstTurnsStartTimerOrUniqueIdByUserWhereSecondSurvivorAndWaitUniqueIdByUserWhereFirstManiacParameterListRoundWhereMatches() {
    return getUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isTrueAndFalseAndNotEqualsEndOfTheRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereFirstAndEnumTurnOfManiacsAndEndOfTheRound() &&
        !isCompleted;
  }

  bool isUniqueIdByUserWhereFirstManiacAndWaitUniqueIdByUserWhereSecondSurvivorOrUniqueIdByUserWhereSecondSurvivorAndUniqueIdByUserWhereSecondTurnsStartTimerParameterListRoundWhereMatches() {
    return getUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isTrueAndFalseAndTrueAndNotEqualsEndOfTheRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndIsStartTimerForUniqueIdByUserWhereFirstAndEnumTurnOfManiacsAndEndOfTheRound() &&
        !isCompleted;
  }

  bool isUniqueIdByUserWhereFirstManiacAndStopTimerOrUniqueIdByUserWhereSecondSurvivorAndStopTimerParameterListRoundWhereMatches() {
    return getUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isTrueAndTrueAndTrueAndNotEqualsEndOfTheRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndEnumTurnOfManiacsAndEndOfTheRound() &&
        !isCompleted;
  }

  bool isUniqueIdByUserWhereFirstManiacAndNextRoundOrUniqueIdByUserWhereSecondSurvivorAndNextRoundParameterListRoundWhereMatches() {
    return getUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isTrueAndEqualsEndOfTheRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndEnumTurnOfManiacsAndEndOfTheRound() &&
        !isCompleted;
  }

  bool isUniqueIdByUserWhereFirstSurvivorAndWaitUniqueIdByUserWhereSecondManiacOrUniqueIdByUserWhereSecondManiacAndUniqueIdByUserWhereSecondTurnsStartTimerParameterListRoundWhereMatches() {
    return getUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isFalseAndFalseAndNotEqualsEndOfTheRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndEnumTurnOfManiacsAndEndOfTheRound() &&
        !isCompleted;
  }

  bool isUniqueIdByUserWhereFirstSurvivorAndUniqueIdByUserWhereFirstTurnsStartTimerOrUniqueIdByUserWhereSecondManiacAndWaitUniqueIdByUserWhereFirstSurvivorParameterListRoundWhereMatches() {
    return getUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isFalseAndFalseAndTrueAndNotEqualsEndOfTheRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndEnumTurnOfManiacsAndEndOfTheRound() &&
        !isCompleted;
  }

  bool isUniqueIdByUserWhereFirstSurvivorAndStopTimerOrUniqueIdByUserWhereSecondManiacAndStopTimerParameterListRoundWhereMatches() {
    return getUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isFalseAndTrueAndTrueAndNotEqualsEndOfTheRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndEnumTurnOfManiacsAndEndOfTheRound() &&
        !isCompleted;
  }

  bool isUniqueIdByUserWhereFirstSurvivorAndNextRoundOrUniqueIdByUserWhereSecondManiacAndNextRoundParameterListRoundWhereMatches() {
    return getUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isFalseAndEqualsEndOfTheRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndEnumTurnOfManiacsAndEndOfTheRound() &&
        !isCompleted;
  }

  @protected
  bool isPickManiacPerkEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(String uniqueIdByUser) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    final lengthByListPickManiacPerkWhereMatchesFromUniqueIdByUserByListPickManiacPerkWhereMatchesByLastItemPickManiacWhereMatches = lastItemPickManiacWhereMatches
        .listPickManiacPerkWhereMatches
        .getListPickManiacPerkWhereMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)
        .length;
    final lengthPickManiacPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches
        .lengthPickManiacPerk;
    return lengthByListPickManiacPerkWhereMatchesFromUniqueIdByUserByListPickManiacPerkWhereMatchesByLastItemPickManiacWhereMatches
        == lengthPickManiacPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches;
  }

  @protected
  bool isPickManiacPerkNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(String uniqueIdByUser) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    final lengthByListPickManiacPerkWhereMatchesFromUniqueIdByUserByListPickManiacPerkWhereMatchesByLastItemPickManiacWhereMatches = lastItemPickManiacWhereMatches
        .listPickManiacPerkWhereMatches
        .getListPickManiacPerkWhereMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)
        .length;
    final lengthPickManiacPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches
        .lengthPickManiacPerk;
    return lengthByListPickManiacPerkWhereMatchesFromUniqueIdByUserByListPickManiacPerkWhereMatchesByLastItemPickManiacWhereMatches
        != lengthPickManiacPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches;
  }

  @protected
  bool isPickSurvivorPerkEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(String uniqueIdByUser) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    final lengthByListPickSurvivorPerkWhereMatchesFromUniqueIdByUserByListPickSurvivorPerkWhereMatchesByLastItemPickManiacWhereMatches = lastItemPickManiacWhereMatches
        .listPickSurvivorPerkWhereMatches
        .getListPickSurvivorPerkWhereMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)
        .length;
    final lengthPickSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches
        .lengthPickSurvivorPerk;
    return lengthByListPickSurvivorPerkWhereMatchesFromUniqueIdByUserByListPickSurvivorPerkWhereMatchesByLastItemPickManiacWhereMatches
        == lengthPickSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches;
  }

  @protected
  bool isPickSurvivorPerkNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(String uniqueIdByUser) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    final lengthByListPickSurvivorPerkWhereMatchesFromUniqueIdByUserByListPickSurvivorPerkWhereMatchesByLastItemPickManiacWhereMatches = lastItemPickManiacWhereMatches
        .listPickSurvivorPerkWhereMatches
        .getListPickSurvivorPerkWhereMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)
        .length;
    final lengthPickSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches
        .lengthPickSurvivorPerk;
    return lengthByListPickSurvivorPerkWhereMatchesFromUniqueIdByUserByListPickSurvivorPerkWhereMatchesByLastItemPickManiacWhereMatches
        != lengthPickSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches;
  }
}