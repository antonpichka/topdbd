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
import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:common_topdbd/named_utility/enum_elo_score.dart';
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
  Matches get getClone => Matches(uniqueId, creationTime, isCompleted, enumBanOrPickNamed.name,textLogAction,matchBalance.getClone,uniqueIdByUserWhereFirst, uniqueIdByUserWhereSecond, isStageBanOrPickForUniqueIdByUserWhereFirst,listBanManiacWhereMatches.getClone,listPickManiacWhereMatches.getClone,listRoundWhereMatches.getClone,resultRatingPointsForUniqueIdByUserWhereFirst, resultRatingPointsForUniqueIdByUserWhereSecond);

  List<int> get getListTwoItemIterationWinRoundForUniqueIdByUserParameterListRoundWhereMatches {
    final listFinishedRoundWhereMatches = getListFinishedRoundWhereMatchesParameterListRoundWhereMatches;
    int iterationWinRoundForUniqueIdByUserWhereFirst = 0;
    int iterationWinRoundForUniqueIdByUserWhereSecond = 0;
    for(RoundWhereMatches roundWhereMatches in listFinishedRoundWhereMatches.listModel)  {
      if(roundWhereMatches.isWinRoundForUniqueIdByUserWhereFirstParametersNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirstAndNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond()) {
        iterationWinRoundForUniqueIdByUserWhereFirst++;
        continue;
      }
      iterationWinRoundForUniqueIdByUserWhereSecond++;
    }
    final listInt = List<int>.empty(growable: true);
    listInt.add(iterationWinRoundForUniqueIdByUserWhereFirst);
    listInt.add(iterationWinRoundForUniqueIdByUserWhereSecond);
    return listInt;
  }

  int getNewStatsForUniqueIdByUserWhereFirstFromRatingPointsForUniqueIdByUserWhereFirstAndRatingPointsForUniqueIdByUserWhereSecondParameterListRoundWhereMatches(int ratingPointsForUniqueIdByUserWhereFirst,int ratingPointsForUniqueIdByUserWhereSecond) {
    final n = ratingPointsForUniqueIdByUserWhereFirst >= ratingPointsForUniqueIdByUserWhereSecond
        ? ratingPointsForUniqueIdByUserWhereSecond
        : ratingPointsForUniqueIdByUserWhereFirst;
    final listTwoItemIterationWinRoundForUniqueIdByUser = getListTwoItemIterationWinRoundForUniqueIdByUserParameterListRoundWhereMatches;
    final iterationWinRoundForUniqueIdByUserWhereFirst = listTwoItemIterationWinRoundForUniqueIdByUser[0];
    final iterationWinRoundForUniqueIdByUserWhereSecond = listTwoItemIterationWinRoundForUniqueIdByUser[1];
    if(iterationWinRoundForUniqueIdByUserWhereFirst > iterationWinRoundForUniqueIdByUserWhereSecond) {
      return AlgorithmsUtility.eloForUserWhereFirst(n, 50, ratingPointsForUniqueIdByUserWhereFirst, ratingPointsForUniqueIdByUserWhereSecond,EnumEloScore.winForUserWhereFirst);
    }
    return AlgorithmsUtility.eloForUserWhereFirst(n, 50, ratingPointsForUniqueIdByUserWhereFirst, ratingPointsForUniqueIdByUserWhereSecond,EnumEloScore.winForUserWhereSecond);
  }

  int getResultRatingPointsForUniqueIdByUserWhereFirstFromRatingPointsForUniqueIdByUserWhereFirstAndRatingPointsForUniqueIdByUserWhereSecondParameterListRoundWhereMatches(int ratingPointsForUniqueIdByUserWhereFirst,int ratingPointsForUniqueIdByUserWhereSecond) {
    return getNewStatsForUniqueIdByUserWhereFirstFromRatingPointsForUniqueIdByUserWhereFirstAndRatingPointsForUniqueIdByUserWhereSecondParameterListRoundWhereMatches(ratingPointsForUniqueIdByUserWhereFirst,ratingPointsForUniqueIdByUserWhereSecond) - ratingPointsForUniqueIdByUserWhereFirst;
  }

  int getNewStatsForUniqueIdByUserWhereSecondFromRatingPointsForUniqueIdByUserWhereFirstAndRatingPointsForUniqueIdByUserWhereSecondParameterListRoundWhereMatches(int ratingPointsForUniqueIdByUserWhereFirst,int ratingPointsForUniqueIdByUserWhereSecond) {
    final n = ratingPointsForUniqueIdByUserWhereFirst >= ratingPointsForUniqueIdByUserWhereSecond
        ? ratingPointsForUniqueIdByUserWhereSecond
        : ratingPointsForUniqueIdByUserWhereFirst;
    final listTwoItemIterationWinRoundForUniqueIdByUser = getListTwoItemIterationWinRoundForUniqueIdByUserParameterListRoundWhereMatches;
    final iterationWinRoundForUniqueIdByUserWhereFirst = listTwoItemIterationWinRoundForUniqueIdByUser[0];
    final iterationWinRoundForUniqueIdByUserWhereSecond = listTwoItemIterationWinRoundForUniqueIdByUser[1];
    if(iterationWinRoundForUniqueIdByUserWhereFirst < iterationWinRoundForUniqueIdByUserWhereSecond) {
      return AlgorithmsUtility.eloForUserWhereSecond(n, 50, ratingPointsForUniqueIdByUserWhereFirst, ratingPointsForUniqueIdByUserWhereSecond,EnumEloScore.winForUserWhereSecond);
    }
    return AlgorithmsUtility.eloForUserWhereSecond(n, 50, ratingPointsForUniqueIdByUserWhereFirst, ratingPointsForUniqueIdByUserWhereSecond,EnumEloScore.winForUserWhereFirst);
  }

  int getResultRatingPointsForUniqueIdByUserWhereSecondFromRatingPointsForUniqueIdByUserWhereFirstAndRatingPointsForUniqueIdByUserWhereSecondParameterListRoundWhereMatches(int ratingPointsForUniqueIdByUserWhereFirst,int ratingPointsForUniqueIdByUserWhereSecond) {
    return getNewStatsForUniqueIdByUserWhereSecondFromRatingPointsForUniqueIdByUserWhereFirstAndRatingPointsForUniqueIdByUserWhereSecondParameterListRoundWhereMatches(ratingPointsForUniqueIdByUserWhereFirst,ratingPointsForUniqueIdByUserWhereSecond) - ratingPointsForUniqueIdByUserWhereSecond;
  }

  String get getScoreParameterListRoundWhereMatches {
    final listTwoItemIterationWinRoundForUniqueIdByUser = getListTwoItemIterationWinRoundForUniqueIdByUserParameterListRoundWhereMatches;
    final iterationWinRoundForUniqueIdByUserWhereFirst = listTwoItemIterationWinRoundForUniqueIdByUser[0];
    final iterationWinRoundForUniqueIdByUserWhereSecond = listTwoItemIterationWinRoundForUniqueIdByUser[1];
    return "$iterationWinRoundForUniqueIdByUserWhereFirst:$iterationWinRoundForUniqueIdByUserWhereSecond";
  }

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
        listPickManiacWhereMatchesNotUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecond.insertFromPickManiacWhereMatchesParameterListModel(pickManiacWhereMatches.getClone);
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
    final listManiacWhereMatchBalance = matchBalance.listManiacWhereMatchBalance.getClone;
    for(ManiacWhereMatchBalance maniacWhereMatchBalance in matchBalance.listManiacWhereMatchBalance.listModel) {
      for(BanManiacWhereMatches banManiacWhereMatches in listBanManiacWhereMatches.listModel) {
        if(banManiacWhereMatches.name == maniacWhereMatchBalance.maniac.name) {
          listManiacWhereMatchBalance.deleteFromUniqueIdByManiacWhereMatchBalanceParameterListModel(maniacWhereMatchBalance.uniqueId);
          break;
        }
      }
      for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
        if(pickManiacWhereMatches.name == maniacWhereMatchBalance.maniac.name) {
          listManiacWhereMatchBalance.deleteFromUniqueIdByManiacWhereMatchBalanceParameterListModel(maniacWhereMatchBalance.uniqueId);
          break;
        }
      }
    }
    return listManiacWhereMatchBalance;
  }

  PickManiacWhereMatches get getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches {
    return listPickManiacWhereMatches.listModel.last.getClone;
  }

  ManiacWhereMatchBalance get getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    ManiacWhereMatchBalance? newManiacWhereMatchBalance;
    for(ManiacWhereMatchBalance maniacWhereMatchBalance in matchBalance.listManiacWhereMatchBalance.listModel) {
      if(maniacWhereMatchBalance.maniac.name == lastItemPickManiacWhereMatches.name) {
        newManiacWhereMatchBalance = maniacWhereMatchBalance.getClone;
        break;
      }
    }
    return newManiacWhereMatchBalance!;
  }

  ListMaps<Maps> get getNotBannedListMapsByLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    ManiacWhereMatchBalance maniacWhereMatchBalanceForLastItemPickManiacWhereMatchesForDelete = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.getClone;
    for(BanMapsWhereMatches banMapsWhereMatches in lastItemPickManiacWhereMatches.listBanMapsWhereMatches.listModel) {
      for(Maps maps in maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listMaps.listModel) {
        if(maps.name == banMapsWhereMatches.name) {
          maniacWhereMatchBalanceForLastItemPickManiacWhereMatchesForDelete
              .listMaps
              .deleteFromUniqueIdByMapsParameterListModel(maps.uniqueId);
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
        lastItemPickManiacWhereMatches.listBanMapsWhereMatches.getClone,
        PickMapsWhereMatches(lastItemMapsFromNotBannedListMapsByLastItemPickManiacWhereMatches.name),
        lastItemPickManiacWhereMatches.listPickManiacPerkWhereMatches.getClone,
        lastItemPickManiacWhereMatches.listPickSurvivorPerkWhereMatches.getClone);
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

  ListRoundWhereMatches<RoundWhereMatches> get getListUnfinishedRoundWhereMatchesParameterListRoundWhereMatches {
    final enumTurnOfManiacsAndEndOfTheRoundWhereEndOfTheRound = EnumTurnOfManiacsAndEndOfTheRound.endOfTheRound;
    final newListRoundWhereMatches = ListRoundWhereMatches<RoundWhereMatches>(List.empty(growable: true));
    for(RoundWhereMatches roundWhereMatches in listRoundWhereMatches.listModel) {
      if(roundWhereMatches.enumTurnOfManiacsAndEndOfTheRound == enumTurnOfManiacsAndEndOfTheRoundWhereEndOfTheRound) {
        continue;
      }
      newListRoundWhereMatches.insertFromRoundWhereMatchesParameterListModel(roundWhereMatches.getClone);
    }
    return newListRoundWhereMatches;
  }

  RoundWhereMatches get getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches {
    return getListUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.listModel.first;
  }

  String get getUniqueIdByUserWhoRoleManiacByFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches {
    if(getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.isRoleManiacForUniqueIdByUserWhereFirst) {
      return uniqueIdByUserWhereFirst;
    }
    return uniqueIdByUserWhereSecond;
  }

  String get getUniqueIdByUserWhoWonRoundByFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches {
    if(getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.isWinRoundForUniqueIdByUserWhereFirstParametersNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirstAndNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond()) {
      return uniqueIdByUserWhereFirst;
    }
    return uniqueIdByUserWhereSecond;
  }

  ListRoundWhereMatches<RoundWhereMatches> get getListFinishedRoundWhereMatchesParameterListRoundWhereMatches {
    final enumTurnOfManiacsAndEndOfTheRoundWhereEndOfTheRound = EnumTurnOfManiacsAndEndOfTheRound.endOfTheRound;
    final newListRoundWhereMatches = ListRoundWhereMatches<RoundWhereMatches>(List.empty(growable: true));
    for(RoundWhereMatches roundWhereMatches in listRoundWhereMatches.listModel) {
      if(roundWhereMatches.enumTurnOfManiacsAndEndOfTheRound != enumTurnOfManiacsAndEndOfTheRoundWhereEndOfTheRound) {
        continue;
      }
      newListRoundWhereMatches.insertFromRoundWhereMatchesParameterListModel(roundWhereMatches.getClone);
    }
    return newListRoundWhereMatches;
  }

  RoundWhereMatches get getLastItemFinishedRoundWhereMatchesParameterListRoundWhereMatches {
    return getListFinishedRoundWhereMatchesParameterListRoundWhereMatches.listModel.last;
  }

  String get getUniqueIdByUserWhoRoleManiacByLastItemFinishedRoundWhereMatchesParameterListRoundWhereMatches {
    if(getLastItemFinishedRoundWhereMatchesParameterListRoundWhereMatches.isRoleManiacForUniqueIdByUserWhereFirst) {
      return uniqueIdByUserWhereFirst;
    }
    return uniqueIdByUserWhereSecond;
  }

  String get getUniqueIdByUserWhoWonRoundByLastItemFinishedRoundWhereMatchesParameterListRoundWhereMatches {
    if(getLastItemFinishedRoundWhereMatchesParameterListRoundWhereMatches.isWinRoundForUniqueIdByUserWhereFirstParametersNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirstAndNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond()) {
      return uniqueIdByUserWhereFirst;
    }
    return uniqueIdByUserWhereSecond;
  }

  @protected
  ListPickManiacWhereMatches<PickManiacWhereMatches> getListPickManiacWhereMatchesForUniqueIdByUserParameterListPickManiacWhereMatches(String uniqueIdByUser) {
    final listPickManiacWhereMatchesForUniqueIdByUser = ListPickManiacWhereMatches<PickManiacWhereMatches>(List.empty(growable: true));
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
      if(pickManiacWhereMatches.uniqueIdByUser == uniqueIdByUser) {
        listPickManiacWhereMatchesForUniqueIdByUser.insertFromPickManiacWhereMatchesParameterListModel(pickManiacWhereMatches.getClone);
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
        listBanManiacWhereMatchesForUniqueIdByUser.insertFromBanManiacWhereMatchesParameterListModel(banManiacWhereMatches.getClone);
        continue;
      }
    }
    return listBanManiacWhereMatchesForUniqueIdByUser;
  }

  @protected
  ListManiacPerk<ManiacPerk> getNotPickedListManiacPerkForUniqueIdByUserParameterListPickManiacWhereMatchesAndMatchBalance(String uniqueIdByUser) {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final listManiacPerkForDelete = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listManiacPerk.getClone;
    for(PickManiacPerkWhereMatches pickManiacPerkWhereMatches in lastItemPickManiacWhereMatches.listPickManiacPerkWhereMatches.getListPickManiacPerkWhereMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)) {
      listManiacPerkForDelete.deleteFromUniqueIdByManiacPerkParameterListModel(pickManiacPerkWhereMatches.uniqueId);
    }
    return listManiacPerkForDelete;
  }

  @protected
  ListSurvivorPerk<SurvivorPerk> getNotPickedListSurvivorPerkForUniqueIdByUserParameterListPickManiacWhereMatchesAndMatchBalance(String uniqueIdByUser) {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final listSurvivorPerkForDelete = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listSurvivorPerk.getClone;
    for(PickSurvivorPerkWhereMatches pickSurvivorPerkWhereMatches in lastItemPickManiacWhereMatches.listPickSurvivorPerkWhereMatches.getListPickSurvivorPerkWhereMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)) {
      listSurvivorPerkForDelete.deleteFromUniqueIdBySurvivorPerkParameterListModel(pickSurvivorPerkWhereMatches.uniqueId);
    }
    return listSurvivorPerkForDelete;
  }

  void updateRoundWhereMatchesWhereTrueQIsStartTimerForUniqueIdByUserWhereFirstParameterListRoundWhereMatches() {
    final firstItemUnfinishedRoundWhereMatches = getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches;
    for(RoundWhereMatches roundWhereMatches in listRoundWhereMatches.listModel) {
      if(roundWhereMatches.round == firstItemUnfinishedRoundWhereMatches.round) {
        listRoundWhereMatches.updateFromRoundWhereMatchesParameterListModel(RoundWhereMatches(
            roundWhereMatches.round,
            roundWhereMatches.pickManiacWhereMatches.getClone,
            roundWhereMatches.enumTurnOfManiacsAndEndOfTheRound.name,
            roundWhereMatches.isRoleManiacForUniqueIdByUserWhereFirst,
            true,
            roundWhereMatches.isStartTimerForUniqueIdByUserWhereSecond,
            roundWhereMatches.numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirst,
            roundWhereMatches.numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond));
        break;
      }
    }
  }

  void updateRoundWhereMatchesWhereTrueQIsStartTimerForUniqueIdByUserWhereSecondParameterListRoundWhereMatches() {
    final firstItemUnfinishedRoundWhereMatches = getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches;
    for(RoundWhereMatches roundWhereMatches in listRoundWhereMatches.listModel) {
      if(roundWhereMatches.round == firstItemUnfinishedRoundWhereMatches.round) {
        listRoundWhereMatches.updateFromRoundWhereMatchesParameterListModel(RoundWhereMatches(
            roundWhereMatches.round,
            roundWhereMatches.pickManiacWhereMatches.getClone,
            roundWhereMatches.enumTurnOfManiacsAndEndOfTheRound.name,
            roundWhereMatches.isRoleManiacForUniqueIdByUserWhereFirst,
            roundWhereMatches.isStartTimerForUniqueIdByUserWhereFirst,
            true,
            roundWhereMatches.numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirst,
            roundWhereMatches.numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond));
        break;
      }
    }
  }

  void updateRoundWhereMatchesWhereFalseQIsStartTimerForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndIsSwapRoleManiacForUniqueIdByUserWhereFirstAndNextOrEndFromNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecondParameterListRoundWhereMatches(int numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond) {
    final firstItemUnfinishedRoundWhereMatches = getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches;
    for(RoundWhereMatches roundWhereMatches in listRoundWhereMatches.listModel) {
      if(roundWhereMatches.round == firstItemUnfinishedRoundWhereMatches.round) {
        listRoundWhereMatches.updateFromRoundWhereMatchesParameterListModel(RoundWhereMatches(
            roundWhereMatches.round,
            roundWhereMatches.pickManiacWhereMatches.getClone,
            roundWhereMatches.getNextOrEndParameterEnumTurnOfManiacsAndEndOfTheRound.name,
            roundWhereMatches.isSwapParameterIsRoleManiacForUniqueIdByUserWhereFirst(),
            false,
            false,
            roundWhereMatches.numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirst,
            numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond));
        break;
      }
    }
  }

  void updateRoundWhereMatchesWhereFalseQIsStartTimerForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndIsSwapRoleManiacForUniqueIdByUserWhereFirstAndNextOrEndFromNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirstParameterListRoundWhereMatches(int numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirst) {
    final firstItemUnfinishedRoundWhereMatches = getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches;
    for(RoundWhereMatches roundWhereMatches in listRoundWhereMatches.listModel) {
      if(roundWhereMatches.round == firstItemUnfinishedRoundWhereMatches.round) {
        listRoundWhereMatches.updateFromRoundWhereMatchesParameterListModel(RoundWhereMatches(
            roundWhereMatches.round,
            roundWhereMatches.pickManiacWhereMatches.getClone,
            roundWhereMatches.getNextOrEndParameterEnumTurnOfManiacsAndEndOfTheRound.name,
            roundWhereMatches.isSwapParameterIsRoleManiacForUniqueIdByUserWhereFirst(),
            false,
            false,
            numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirst,
            roundWhereMatches.numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond));
        break;
      }
    }
  }

  void updateRoundWhereMatchesWhereNameByEndOfTheRoundQEnumTurnOfManiacsAndEndOfTheRoundParameterListRoundWhereMatches() {
    final firstItemUnfinishedRoundWhereMatches = getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches;
    for(RoundWhereMatches roundWhereMatches in listRoundWhereMatches.listModel) {
      if(roundWhereMatches.round == firstItemUnfinishedRoundWhereMatches.round) {
        listRoundWhereMatches.updateFromRoundWhereMatchesParameterListModel(RoundWhereMatches(
            roundWhereMatches.round,
            roundWhereMatches.pickManiacWhereMatches.getClone,
            EnumTurnOfManiacsAndEndOfTheRound.endOfTheRound.name,
            roundWhereMatches.isRoleManiacForUniqueIdByUserWhereFirst,
            roundWhereMatches.isStartTimerForUniqueIdByUserWhereFirst,
            roundWhereMatches.isStartTimerForUniqueIdByUserWhereSecond,
            roundWhereMatches.numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirst,
            roundWhereMatches.numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond));
        break;
      }
    }
  }

  void insertListRoundWhereMatchesParameterListRoundWhereMatches() {
    listPickManiacWhereMatches.pickManiacWhereMatchesWhereOrderByAscParameterCreationTimeIteratorParameterListModel();
    int round = 1;
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
      final isRoleManiacUniqueIdByUserWhereFirst =
      pickManiacWhereMatches.uniqueIdByUser == uniqueIdByUserWhereFirst
          ? true
          : false;
      listRoundWhereMatches.insertFromRoundWhereMatchesParameterListModel(RoundWhereMatches(
          round,
          pickManiacWhereMatches.getClone,
          EnumTurnOfManiacsAndEndOfTheRound.firstManiac.name,
          isRoleManiacUniqueIdByUserWhereFirst,
          false,
          false,
          0,
          0));
      round++;
    }
  }

  void insertListPickManiacPerkWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    for(PickManiacWhereMatches pickManiacWhereMatches in listPickManiacWhereMatches.listModel) {
      if(pickManiacWhereMatches.name == lastItemPickManiacWhereMatches.name) {
        for(ManiacPerk maniacPerk in maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listManiacPerk.listModel) {
          pickManiacWhereMatches
              .listPickManiacPerkWhereMatches
              .insertFromPickManiacPerkWhereMatchesParameterListModel(PickManiacPerkWhereMatches(maniacPerk.perk.name,uniqueIdByUserWhereFirst));
          pickManiacWhereMatches
              .listPickManiacPerkWhereMatches
              .insertFromPickManiacPerkWhereMatchesParameterListModel(PickManiacPerkWhereMatches(maniacPerk.perk.name,uniqueIdByUserWhereSecond));
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
              .insertFromPickSurvivorPerkWhereMatchesParameterListModel(PickSurvivorPerkWhereMatches(survivorPerk.perk.name,uniqueIdByUserWhereFirst));
          pickManiacWhereMatches
              .listPickSurvivorPerkWhereMatches
              .insertFromPickSurvivorPerkWhereMatchesParameterListModel(PickSurvivorPerkWhereMatches(survivorPerk.perk.name,uniqueIdByUserWhereSecond));
        }
        break;
      }
    }
  }

  void updatePickMapsWhereMatchesParameterListPickManiacWhereMatches() {
    listPickManiacWhereMatches
        .updateFromPickManiacWhereMatchesParameterListModel(getUpdatedLastItemPickMapsWhereMatchesToListPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance);
  }

  void insertBanManiacWhereMatchesForUniqueIdByUserWhereFirstFromNameManiacParameterListBanManiacWhereMatches(String nameManiac) {
    listBanManiacWhereMatches
        .insertFromBanManiacWhereMatchesParameterListModel(BanManiacWhereMatches(nameManiac,uniqueIdByUserWhereFirst));
  }

  void insertBanManiacWhereMatchesForUniqueIdByUserWhereSecondFromNameManiacParameterListBanManiacWhereMatches(String nameManiac) {
    listBanManiacWhereMatches
        .insertFromBanManiacWhereMatchesParameterListModel(BanManiacWhereMatches(nameManiac,uniqueIdByUserWhereSecond));
  }

  void insertPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromNameManiacParameterListPickManiacWhereMatches(String nameManiac) {
    listPickManiacWhereMatches
        .insertFromPickManiacWhereMatchesParameterListModel(PickManiacWhereMatches(nameManiac,uniqueIdByUserWhereFirst,DateTime.now(),ListBanMapsWhereMatches(List.empty(growable: true)),PickMapsWhereMatches(""),ListPickManiacPerkWhereMatches(List.empty(growable: true)),ListPickSurvivorPerkWhereMatches(List.empty(growable: true))));
  }

  void insertPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromNameManiacParameterListPickManiacWhereMatches(String nameManiac) {
    listPickManiacWhereMatches
        .insertFromPickManiacWhereMatchesParameterListModel(PickManiacWhereMatches(nameManiac,uniqueIdByUserWhereSecond,DateTime.now(),ListBanMapsWhereMatches(List.empty(growable: true)),PickMapsWhereMatches(""),ListPickManiacPerkWhereMatches(List.empty(growable: true)),ListPickSurvivorPerkWhereMatches(List.empty(growable: true))));
  }

  void insertLastPickManiacWhereMatchesParameterListPickManiacWhereMatches() {
    final notBannedAndPickedListManiacWhereMatchBalance = getNotBannedAndPickedListManiacWhereMatchBalanceParametersListBanManiacWhereMatchesAndListPickManiacWhereMatchesAndMatchBalance;
    final lastManiacWhereMatchBalance = notBannedAndPickedListManiacWhereMatchBalance.listModel.last;
    listPickManiacWhereMatches
        .insertFromPickManiacWhereMatchesParameterListModel(PickManiacWhereMatches(lastManiacWhereMatchBalance.maniac.name,"",DateTime.now(),ListBanMapsWhereMatches(List.empty(growable: true)),PickMapsWhereMatches(""),ListPickManiacPerkWhereMatches(List.empty(growable: true)),ListPickSurvivorPerkWhereMatches(List.empty(growable: true))));
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
        .insertFromBanMapsWhereMatchesParameterListModel(BanMapsWhereMatches(maps.name,uniqueIdByUser));
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
        .insertFromPickManiacPerkWhereMatchesParameterListModel(PickManiacPerkWhereMatches(maniacPerk.perk.name,uniqueIdByUser));
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
        .insertFromPickSurvivorPerkWhereMatchesParameterListModel(PickSurvivorPerkWhereMatches(survivorPerk.perk.name,uniqueIdByUser));
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

  bool isEmptyByListUnfinishedRoundWhereMatchesParameterListRoundWhereMatches() {
    return getListUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .listModel
        .isEmpty;
  }

  bool isLengthByListFinishedRoundWhereMatchesMoreThanLengthByListUnfinishedRoundWhereMatchesParameterListRoundWhereMatches() {
    final listFinishedRoundWhereMatches = getListFinishedRoundWhereMatchesParameterListRoundWhereMatches;
    final listUnfinishedRoundWhereMatches = getListUnfinishedRoundWhereMatchesParameterListRoundWhereMatches;
    return listFinishedRoundWhereMatches.listModel.length > listUnfinishedRoundWhereMatches.listModel.length;
  }

  bool isListFinishedRoundWhereMatchesWereWonByOneUserParameterListRoundWhereMatches() {
    final listFinishedRoundWhereMatches = getListFinishedRoundWhereMatchesParameterListRoundWhereMatches;
    int iterationWinRoundForUniqueIdByUserWhereFirst = 0;
    int iterationWinRoundForUniqueIdByUserWhereSecond = 0;
    for(RoundWhereMatches roundWhereMatches in listFinishedRoundWhereMatches.listModel)  {
      if(roundWhereMatches.isWinRoundForUniqueIdByUserWhereFirstParametersNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirstAndNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond()) {
        iterationWinRoundForUniqueIdByUserWhereFirst++;
        continue;
      }
      iterationWinRoundForUniqueIdByUserWhereSecond++;
    }
    if(iterationWinRoundForUniqueIdByUserWhereFirst == listFinishedRoundWhereMatches.listModel.length) {
      return true;
    }
    if(iterationWinRoundForUniqueIdByUserWhereSecond == listFinishedRoundWhereMatches.listModel.length) {
      return true;
    }
    return false;
  }

  bool isWinMatchesForUniqueIdByUserWhereFirstParameterListRoundWhereMatches() {
    final listTwoItemIterationWinRoundForUniqueIdByUser = getListTwoItemIterationWinRoundForUniqueIdByUserParameterListRoundWhereMatches;
    final iterationWinRoundForUniqueIdByUserWhereFirst = listTwoItemIterationWinRoundForUniqueIdByUser[0];
    final iterationWinRoundForUniqueIdByUserWhereSecond = listTwoItemIterationWinRoundForUniqueIdByUser[1];
    if(iterationWinRoundForUniqueIdByUserWhereFirst > iterationWinRoundForUniqueIdByUserWhereSecond) {
      return true;
    }
    return false;
  }

  bool isUniqueIdByUserWhereFirstManiacAndUniqueIdByUserWhereFirstTurnsStartTimerOrUniqueIdByUserWhereSecondSurvivorAndWaitUniqueIdByUserWhereFirstManiacParameterListRoundWhereMatches() {
    return getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isTrueAndFalseAndNotEqualsNextRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereFirstAndEnumTurnOfManiacsAndEndOfTheRound();
  }

  bool isUniqueIdByUserWhereFirstManiacAndWaitUniqueIdByUserWhereSecondSurvivorOrUniqueIdByUserWhereSecondSurvivorAndUniqueIdByUserWhereSecondTurnsStartTimerParameterListRoundWhereMatches() {
    return getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isTrueAndFalseAndTrueAndNotEqualsNextRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndIsStartTimerForUniqueIdByUserWhereFirstAndEnumTurnOfManiacsAndEndOfTheRound();
  }

  bool isUniqueIdByUserWhereFirstManiacAndStopTimerOrUniqueIdByUserWhereSecondSurvivorAndStopTimerParameterListRoundWhereMatches() {
    return getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isTrueAndTrueAndTrueAndNotEqualsNextRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndEnumTurnOfManiacsAndEndOfTheRound();
  }

  bool isUniqueIdByUserWhereFirstManiacAndNextRoundOrUniqueIdByUserWhereSecondSurvivorAndNextRoundParameterListRoundWhereMatches() {
    return getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isTrueAndEqualsNextRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndEnumTurnOfManiacsAndEndOfTheRound();
  }

  bool isUniqueIdByUserWhereFirstSurvivorAndWaitUniqueIdByUserWhereSecondManiacOrUniqueIdByUserWhereSecondManiacAndUniqueIdByUserWhereSecondTurnsStartTimerParameterListRoundWhereMatches() {
    return getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isFalseAndFalseAndNotEqualsNextRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndEnumTurnOfManiacsAndEndOfTheRound();
  }

  bool isUniqueIdByUserWhereFirstSurvivorAndUniqueIdByUserWhereFirstTurnsStartTimerOrUniqueIdByUserWhereSecondManiacAndWaitUniqueIdByUserWhereFirstSurvivorParameterListRoundWhereMatches() {
    return getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isFalseAndFalseAndTrueAndNotEqualsNextRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndEnumTurnOfManiacsAndEndOfTheRound();
  }

  bool isUniqueIdByUserWhereFirstSurvivorAndStopTimerOrUniqueIdByUserWhereSecondManiacAndStopTimerParameterListRoundWhereMatches() {
    return getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isFalseAndTrueAndTrueAndNotEqualsNextRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndEnumTurnOfManiacsAndEndOfTheRound();
  }

  bool isUniqueIdByUserWhereFirstSurvivorAndNextRoundOrUniqueIdByUserWhereSecondManiacAndNextRoundParameterListRoundWhereMatches() {
    return getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isFalseAndEqualsNextRoundParametersIsRoleManiacForUniqueIdByUserWhereFirstAndEnumTurnOfManiacsAndEndOfTheRound();
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