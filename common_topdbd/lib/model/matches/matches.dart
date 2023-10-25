import 'package:common_topdbd/model/ban_maniac_where_matches/ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/ban_maniac_where_matches/list_ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/ban_maps_where_matches/ban_maps_w_matches.dart';
import 'package:common_topdbd/model/ban_maps_where_matches/list_ban_maps_w_matches.dart';
import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/matches/enum_stage_named.dart';
import 'package:common_topdbd/model/pick_maniac_perk_where_matches/list_pick_maniac_perk_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_perk_where_matches/pick_maniac_perk_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/list_pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/pick_maps_where_matches/pick_maps_w_matches.dart';
import 'package:common_topdbd/model/pick_survivor_perk_where_matches/list_pick_survivor_perk_w_matches.dart';
import 'package:common_topdbd/model/pick_survivor_perk_where_matches/pick_survivor_perk_w_matches.dart';
import 'package:common_topdbd/model/round_where_matches/enum_turn_of_maniacs_and_end_of_the_round.dart';
import 'package:common_topdbd/model/round_where_matches/list_round_w_matches.dart';
import 'package:common_topdbd/model/round_where_matches/round_w_matches.dart';
import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:common_topdbd/named_utility/enum_win_number_user.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Matches extends BaseModel {
  final DateTime creationTime;
  final bool isCompleted;
  final String textLogAction;
  final MatchBalance matchBalance;
  final String firstUniqueIdByUser;
  final String secondUniqueIdByUser;
  final EnumStageNamed enumStageNamed;
  final bool isStageNamedWFirstUniqueIdByUser;
  final ListBanManiacWMatches listBanManiacWMatches;
  final ListPickManiacWMatches listPickManiacWMatches;
  final ListRoundWMatches listRoundWMatches;
  final int resultRatingPointsWFirstUniqueIdByUser;
  final int resultRatingPointsWSecondUniqueIdByUser;

  Matches(super.uniqueId, this.creationTime, this.isCompleted, String strBanOrPickNamed,this.textLogAction, this.matchBalance, this.firstUniqueIdByUser, this.secondUniqueIdByUser, this.isStageNamedWFirstUniqueIdByUser, this.listBanManiacWMatches, this.listPickManiacWMatches, this.listRoundWMatches, this.resultRatingPointsWFirstUniqueIdByUser, this.resultRatingPointsWSecondUniqueIdByUser)
      : enumStageNamed = _getFromStrBanOrPickNamedToManiacParameterEnumBanOrPickNamed(strBanOrPickNamed);

  static EnumStageNamed _getFromStrBanOrPickNamedToManiacParameterEnumBanOrPickNamed(String strBanOrPickNamed) {
    if(strBanOrPickNamed == EnumStageNamed.systemPickManiac.name) {
      return EnumStageNamed.systemPickManiac;
    }
    if(strBanOrPickNamed == EnumStageNamed.systemPickMapsToManiac.name) {
      return EnumStageNamed.systemPickMapsToManiac;
    }
    if(strBanOrPickNamed == EnumStageNamed.systemPickManiacPerkToManiac.name) {
      return EnumStageNamed.systemPickManiacPerkToManiac;
    }
    if(strBanOrPickNamed == EnumStageNamed.systemPickSurvivorPerkToManiac.name) {
      return EnumStageNamed.systemPickSurvivorPerkToManiac;
    }
    if(strBanOrPickNamed == EnumStageNamed.banManiac.name) {
      return EnumStageNamed.banManiac;
    }
    if(strBanOrPickNamed == EnumStageNamed.pickManiac.name) {
      return EnumStageNamed.pickManiac;
    }
    if(strBanOrPickNamed == EnumStageNamed.bansMapsToManiac.name) {
      return EnumStageNamed.bansMapsToManiac;
    }
    if(strBanOrPickNamed == EnumStageNamed.pickManiacPerkToManiac.name) {
      return EnumStageNamed.pickManiacPerkToManiac;
    }
    if(strBanOrPickNamed == EnumStageNamed.pickSurvivorPerkToManiac.name) {
      return EnumStageNamed.pickSurvivorPerkToManiac;
    }
    return EnumStageNamed.ready;
  }

  @override
  Matches get getClone => Matches(uniqueId, creationTime, isCompleted, enumStageNamed.name,textLogAction,matchBalance.getClone,firstUniqueIdByUser, secondUniqueIdByUser, isStageNamedWFirstUniqueIdByUser,listBanManiacWMatches.getClone,listPickManiacWMatches.getClone,listRoundWMatches.getClone,resultRatingPointsWFirstUniqueIdByUser, resultRatingPointsWSecondUniqueIdByUser);

  List<int> get getListTwoItemIterationWinRoundForUniqueIdByUserParameterListRoundWhereMatches {
    final listFinishedRoundWhereMatches = getListFinishedRoundWhereMatchesParameterListRoundWhereMatches;
    int iterationWinRoundForUniqueIdByUserWhereFirst = 0;
    int iterationWinRoundForUniqueIdByUserWhereSecond = 0;
    for(RoundWMatches roundWhereMatches in listFinishedRoundWhereMatches.listModel)  {
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
      return AlgorithmsUtility.getEloWhereCalculationWFirstUserFromNAndKFactorAndRatingFirstUserAndRatingSecondUserAndEnumWinNumberUser(n, 50, ratingPointsForUniqueIdByUserWhereFirst, ratingPointsForUniqueIdByUserWhereSecond,EnumWinNumberUser.winFirstUser);
    }
    return AlgorithmsUtility.getEloWhereCalculationWFirstUserFromNAndKFactorAndRatingFirstUserAndRatingSecondUserAndEnumWinNumberUser(n, 50, ratingPointsForUniqueIdByUserWhereFirst, ratingPointsForUniqueIdByUserWhereSecond,EnumWinNumberUser.winSecondUser);
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
      return AlgorithmsUtility.getEloWhereCalculationWSecondUserFromNAndKFactorAndRatingFirstUserAndRatingSecondUserAndEnumWinNumberUser(n, 50, ratingPointsForUniqueIdByUserWhereFirst, ratingPointsForUniqueIdByUserWhereSecond,EnumWinNumberUser.winSecondUser);
    }
    return AlgorithmsUtility.getEloWhereCalculationWSecondUserFromNAndKFactorAndRatingFirstUserAndRatingSecondUserAndEnumWinNumberUser(n, 50, ratingPointsForUniqueIdByUserWhereFirst, ratingPointsForUniqueIdByUserWhereSecond,EnumWinNumberUser.winFirstUser);
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

  ListPickManiacWMatches<PickManiacWMatches> get getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst {
    return getListPickManiacWhereMatchesForUniqueIdByUserParameterListPickManiacWhereMatches(firstUniqueIdByUser);
  }

  ListPickManiacWMatches<PickManiacWMatches> get getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond {
    return getListPickManiacWhereMatchesForUniqueIdByUserParameterListPickManiacWhereMatches(secondUniqueIdByUser);
  }

  ListPickManiacWMatches<PickManiacWMatches> get getListPickManiacWhereMatchesNotUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecond {
    final listPickManiacWhereMatchesNotUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecond = ListPickManiacWMatches<PickManiacWMatches>(List.empty(growable: true));
    for(PickManiacWMatches pickManiacWhereMatches in listPickManiacWMatches.listModel) {
      if(pickManiacWhereMatches.uniqueIdByUser != firstUniqueIdByUser
          && pickManiacWhereMatches.uniqueIdByUser != secondUniqueIdByUser)
      {
        listPickManiacWhereMatchesNotUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecond.insertFromPickManiacWMatchesParameterListModel(pickManiacWhereMatches.getClone);
        continue;
      }
    }
    return listPickManiacWhereMatchesNotUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecond;
  }

  ListBanManiacWMatches<BanManiacWMatches> get getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst {
    return getListBanManiacWhereMatchesForUniqueIdByUserParameterListBanManiacWhereMatches(firstUniqueIdByUser);
  }

  ListBanManiacWMatches<BanManiacWMatches> get getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond {
    return getListBanManiacWhereMatchesForUniqueIdByUserParameterListBanManiacWhereMatches(secondUniqueIdByUser);
  }

  ListManiacWMatchBalance<ManiacWMatchBalance> get getNotBannedAndPickedListManiacWhereMatchBalanceParametersListBanManiacWhereMatchesAndListPickManiacWhereMatchesAndMatchBalance {
    final listManiacWhereMatchBalance = matchBalance.listManiacWMatchBalance.getClone;
    for(ManiacWMatchBalance maniacWhereMatchBalance in matchBalance.listManiacWMatchBalance.listModel) {
      for(BanManiacWMatches banManiacWhereMatches in listBanManiacWMatches.listModel) {
        if(banManiacWhereMatches.nameBanManiac == maniacWhereMatchBalance.maniac.name) {
          listManiacWhereMatchBalance.deleteFromUniqueIdByManiacWMatchBalanceParameterListModel(maniacWhereMatchBalance.uniqueId);
          break;
        }
      }
      for(PickManiacWMatches pickManiacWhereMatches in listPickManiacWMatches.listModel) {
        if(pickManiacWhereMatches.nameSurvivorPerk == maniacWhereMatchBalance.maniac.name) {
          listManiacWhereMatchBalance.deleteFromUniqueIdByManiacWMatchBalanceParameterListModel(maniacWhereMatchBalance.uniqueId);
          break;
        }
      }
    }
    return listManiacWhereMatchBalance;
  }

  PickManiacWMatches get getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches {
    return listPickManiacWMatches.listModel.last.getClone;
  }

  ManiacWMatchBalance get getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    ManiacWMatchBalance? newManiacWhereMatchBalance;
    for(ManiacWMatchBalance maniacWhereMatchBalance in matchBalance.listManiacWMatchBalance.listModel) {
      if(maniacWhereMatchBalance.maniac.name == lastItemPickManiacWhereMatches.nameSurvivorPerk) {
        newManiacWhereMatchBalance = maniacWhereMatchBalance.getClone;
        break;
      }
    }
    return newManiacWhereMatchBalance!;
  }

  ListMaps<Maps> get getNotBannedListMapsByLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    ManiacWMatchBalance maniacWhereMatchBalanceForLastItemPickManiacWhereMatchesForDelete = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.getClone;
    for(BanMapsWMatches banMapsWhereMatches in lastItemPickManiacWhereMatches.listBanMapsWMatches.listModel) {
      for(Maps maps in maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listMaps.listModel) {
        if(maps.name == banMapsWhereMatches.nameBanMaps) {
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

  PickManiacWMatches get getUpdatedLastItemPickMapsWhereMatchesToListPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final lastItemMapsFromNotBannedListMapsByLastItemPickManiacWhereMatches = getLastItemMapsFromNotBannedListMapsByLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance;
    return PickManiacWMatches(
        lastItemPickManiacWhereMatches.nameSurvivorPerk,
        lastItemPickManiacWhereMatches.uniqueIdByUser,
        lastItemPickManiacWhereMatches.creationTime,
        lastItemPickManiacWhereMatches.listBanMapsWMatches.getClone,
        PickMapsWMatches(lastItemMapsFromNotBannedListMapsByLastItemPickManiacWhereMatches.name),
        lastItemPickManiacWhereMatches.listPickManiacPerkWMatches.getClone,
        lastItemPickManiacWhereMatches.listPickSurvivorPerkWMatches.getClone);
  }

  ListManiacPerk<ManiacPerk> get getListManiacPerkForLastItemPickManiacWhereMatchesParameterMatchBalance {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listManiacPerk;
  }

  ListManiacPerk<ManiacPerk> get getNotPickedListManiacPerkForUniqueIdByUserWhereFirstParameterListPickManiacWhereMatchesAndMatchBalance {
    return getNotPickedListManiacPerkForUniqueIdByUserParameterListPickManiacWhereMatchesAndMatchBalance(firstUniqueIdByUser);
  }

  ListManiacPerk<ManiacPerk> get getNotPickedListManiacPerkForUniqueIdByUserWhereSecondParameterListPickManiacWhereMatchesAndMatchBalance {
    return getNotPickedListManiacPerkForUniqueIdByUserParameterListPickManiacWhereMatchesAndMatchBalance(secondUniqueIdByUser);
  }

  ListSurvivorPerk<SurvivorPerk> get getListSurvivorPerkForLastItemPickManiacWhereMatchesParameterMatchBalance {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listSurvivorPerk;
  }

  ListSurvivorPerk<SurvivorPerk> get getNotPickedListSurvivorPerkForUniqueIdByUserWhereFirstParameterListPickManiacWhereMatchesAndMatchBalance {
    return getNotPickedListSurvivorPerkForUniqueIdByUserParameterListPickManiacWhereMatchesAndMatchBalance(firstUniqueIdByUser);
  }

  ListSurvivorPerk<SurvivorPerk> get getNotPickedListSurvivorPerkForUniqueIdByUserWhereSecondParameterListPickManiacWhereMatchesAndMatchBalance {
    return getNotPickedListSurvivorPerkForUniqueIdByUserParameterListPickManiacWhereMatchesAndMatchBalance(secondUniqueIdByUser);
  }

  ListRoundWMatches<RoundWMatches> get getListUnfinishedRoundWhereMatchesParameterListRoundWhereMatches {
    final enumTurnOfManiacsAndEndOfTheRoundWhereEndOfTheRound = EnumTurnOfManiacsAndEndOfTheRound.endOfTheRound;
    final newListRoundWhereMatches = ListRoundWMatches<RoundWMatches>(List.empty(growable: true));
    for(RoundWMatches roundWhereMatches in listRoundWMatches.listModel) {
      if(roundWhereMatches.enumTurnOfManiacsAndEndOfTheRound == enumTurnOfManiacsAndEndOfTheRoundWhereEndOfTheRound) {
        continue;
      }
      newListRoundWhereMatches.insertFromRoundWMatchesParameterListModel(roundWhereMatches.getClone);
    }
    return newListRoundWhereMatches;
  }

  RoundWMatches get getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches {
    return getListUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.listModel.first;
  }

  String get getUniqueIdByUserWhoRoleManiacByFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches {
    if(getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.isRoleManiacForUniqueIdByUserWhereFirst) {
      return firstUniqueIdByUser;
    }
    return secondUniqueIdByUser;
  }

  String get getUniqueIdByUserWhoWonRoundByFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches {
    if(getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.isWinRoundForUniqueIdByUserWhereFirstParametersNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirstAndNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond()) {
      return firstUniqueIdByUser;
    }
    return secondUniqueIdByUser;
  }

  ListRoundWMatches<RoundWMatches> get getListFinishedRoundWhereMatchesParameterListRoundWhereMatches {
    final enumTurnOfManiacsAndEndOfTheRoundWhereEndOfTheRound = EnumTurnOfManiacsAndEndOfTheRound.endOfTheRound;
    final newListRoundWhereMatches = ListRoundWMatches<RoundWMatches>(List.empty(growable: true));
    for(RoundWMatches roundWhereMatches in listRoundWMatches.listModel) {
      if(roundWhereMatches.enumTurnOfManiacsAndEndOfTheRound != enumTurnOfManiacsAndEndOfTheRoundWhereEndOfTheRound) {
        continue;
      }
      newListRoundWhereMatches.insertFromRoundWMatchesParameterListModel(roundWhereMatches.getClone);
    }
    return newListRoundWhereMatches;
  }

  RoundWMatches get getLastItemFinishedRoundWhereMatchesParameterListRoundWhereMatches {
    return getListFinishedRoundWhereMatchesParameterListRoundWhereMatches.listModel.last;
  }

  String get getUniqueIdByUserWhoRoleManiacByLastItemFinishedRoundWhereMatchesParameterListRoundWhereMatches {
    if(getLastItemFinishedRoundWhereMatchesParameterListRoundWhereMatches.isRoleManiacForUniqueIdByUserWhereFirst) {
      return firstUniqueIdByUser;
    }
    return secondUniqueIdByUser;
  }

  String get getUniqueIdByUserWhoWonRoundByLastItemFinishedRoundWhereMatchesParameterListRoundWhereMatches {
    if(getLastItemFinishedRoundWhereMatchesParameterListRoundWhereMatches.isWinRoundForUniqueIdByUserWhereFirstParametersNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirstAndNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond()) {
      return firstUniqueIdByUser;
    }
    return secondUniqueIdByUser;
  }

  @protected
  ListPickManiacWMatches<PickManiacWMatches> getListPickManiacWhereMatchesForUniqueIdByUserParameterListPickManiacWhereMatches(String uniqueIdByUser) {
    final listPickManiacWhereMatchesForUniqueIdByUser = ListPickManiacWMatches<PickManiacWMatches>(List.empty(growable: true));
    for(PickManiacWMatches pickManiacWhereMatches in listPickManiacWMatches.listModel) {
      if(pickManiacWhereMatches.uniqueIdByUser == uniqueIdByUser) {
        listPickManiacWhereMatchesForUniqueIdByUser.insertFromPickManiacWMatchesParameterListModel(pickManiacWhereMatches.getClone);
        continue;
      }
    }
    return listPickManiacWhereMatchesForUniqueIdByUser;
  }

  @protected
  ListBanManiacWMatches<BanManiacWMatches> getListBanManiacWhereMatchesForUniqueIdByUserParameterListBanManiacWhereMatches(String uniqueIdByUser) {
    final listBanManiacWhereMatchesForUniqueIdByUser = ListBanManiacWMatches<BanManiacWMatches>(List.empty(growable: true));
    for(BanManiacWMatches banManiacWhereMatches in listBanManiacWMatches.listModel) {
      if(banManiacWhereMatches.uniqueIdByUser == uniqueIdByUser) {
        listBanManiacWhereMatchesForUniqueIdByUser.insertFromBanManiacWMatchesParameterListModel(banManiacWhereMatches.getClone);
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
    for(PickManiacPerkWMatches pickManiacPerkWhereMatches in lastItemPickManiacWhereMatches.listPickManiacPerkWMatches.getListPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)) {
      listManiacPerkForDelete.deleteFromUniqueIdByManiacPerkParameterListModel(pickManiacPerkWhereMatches.uniqueId);
    }
    return listManiacPerkForDelete;
  }

  @protected
  ListSurvivorPerk<SurvivorPerk> getNotPickedListSurvivorPerkForUniqueIdByUserParameterListPickManiacWhereMatchesAndMatchBalance(String uniqueIdByUser) {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final listSurvivorPerkForDelete = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listSurvivorPerk.getClone;
    for(PickSurvivorPerkWMatches pickSurvivorPerkWhereMatches in lastItemPickManiacWhereMatches.listPickSurvivorPerkWMatches.getListPickSurvivorPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)) {
      listSurvivorPerkForDelete.deleteFromUniqueIdBySurvivorPerkParameterListModel(pickSurvivorPerkWhereMatches.uniqueId);
    }
    return listSurvivorPerkForDelete;
  }

  void updateRoundWhereMatchesWhereTrueQIsStartTimerForUniqueIdByUserWhereFirstParameterListRoundWhereMatches() {
    final firstItemUnfinishedRoundWhereMatches = getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches;
    for(RoundWMatches roundWhereMatches in listRoundWMatches.listModel) {
      if(roundWhereMatches.round == firstItemUnfinishedRoundWhereMatches.round) {
        listRoundWMatches.updateFromRoundWMatchesParameterListModel(RoundWMatches(
            roundWhereMatches.round,
            roundWhereMatches.pickManiacWMatches.getClone,
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
    for(RoundWMatches roundWhereMatches in listRoundWMatches.listModel) {
      if(roundWhereMatches.round == firstItemUnfinishedRoundWhereMatches.round) {
        listRoundWMatches.updateFromRoundWMatchesParameterListModel(RoundWMatches(
            roundWhereMatches.round,
            roundWhereMatches.pickManiacWMatches.getClone,
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
    for(RoundWMatches roundWhereMatches in listRoundWMatches.listModel) {
      if(roundWhereMatches.round == firstItemUnfinishedRoundWhereMatches.round) {
        listRoundWMatches.updateFromRoundWMatchesParameterListModel(RoundWMatches(
            roundWhereMatches.round,
            roundWhereMatches.pickManiacWMatches.getClone,
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
    for(RoundWMatches roundWhereMatches in listRoundWMatches.listModel) {
      if(roundWhereMatches.round == firstItemUnfinishedRoundWhereMatches.round) {
        listRoundWMatches.updateFromRoundWMatchesParameterListModel(RoundWMatches(
            roundWhereMatches.round,
            roundWhereMatches.pickManiacWMatches.getClone,
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
    for(RoundWMatches roundWhereMatches in listRoundWMatches.listModel) {
      if(roundWhereMatches.round == firstItemUnfinishedRoundWhereMatches.round) {
        listRoundWMatches.updateFromRoundWMatchesParameterListModel(RoundWMatches(
            roundWhereMatches.round,
            roundWhereMatches.pickManiacWMatches.getClone,
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
    listPickManiacWMatches.pickManiacWMatchesWhereOrderByAscParameterCreationTimeIterator();
    int round = 1;
    for(PickManiacWMatches pickManiacWhereMatches in listPickManiacWMatches.listModel) {
      final isRoleManiacUniqueIdByUserWhereFirst =
      pickManiacWhereMatches.uniqueIdByUser == firstUniqueIdByUser
          ? true
          : false;
      listRoundWMatches.insertFromRoundWMatchesParameterListModel(RoundWMatches(
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
    for(PickManiacWMatches pickManiacWhereMatches in listPickManiacWMatches.listModel) {
      if(pickManiacWhereMatches.nameSurvivorPerk == lastItemPickManiacWhereMatches.nameSurvivorPerk) {
        for(ManiacPerk maniacPerk in maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listManiacPerk.listModel) {
          pickManiacWhereMatches
              .listPickManiacPerkWMatches
              .insertFromPickManiacPerkWMatchesParameterListModel(PickManiacPerkWMatches(maniacPerk.perk.name,firstUniqueIdByUser));
          pickManiacWhereMatches
              .listPickManiacPerkWMatches
              .insertFromPickManiacPerkWMatchesParameterListModel(PickManiacPerkWMatches(maniacPerk.perk.name,secondUniqueIdByUser));
        }
        break;
      }
    }
  }

  void insertListPickSurvivorPerkWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    for(PickManiacWMatches pickManiacWhereMatches in listPickManiacWMatches.listModel) {
      if(pickManiacWhereMatches.nameSurvivorPerk == lastItemPickManiacWhereMatches.nameSurvivorPerk) {
        for(SurvivorPerk survivorPerk in maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listSurvivorPerk.listModel) {
          pickManiacWhereMatches
              .listPickSurvivorPerkWMatches
              .insertFromPickSurvivorPerkWMatchesParameterListModel(PickSurvivorPerkWMatches(survivorPerk.perk.name,firstUniqueIdByUser));
          pickManiacWhereMatches
              .listPickSurvivorPerkWMatches
              .insertFromPickSurvivorPerkWMatchesParameterListModel(PickSurvivorPerkWMatches(survivorPerk.perk.name,secondUniqueIdByUser));
        }
        break;
      }
    }
  }

  void updatePickMapsWhereMatchesParameterListPickManiacWhereMatches() {
    listPickManiacWMatches
        .updateFromPickManiacWMatchesParameterListModel(getUpdatedLastItemPickMapsWhereMatchesToListPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance);
  }

  void insertBanManiacWhereMatchesForUniqueIdByUserWhereFirstFromNameManiacParameterListBanManiacWhereMatches(String nameManiac) {
    listBanManiacWMatches
        .insertFromBanManiacWMatchesParameterListModel(BanManiacWMatches(nameManiac,firstUniqueIdByUser));
  }

  void insertBanManiacWhereMatchesForUniqueIdByUserWhereSecondFromNameManiacParameterListBanManiacWhereMatches(String nameManiac) {
    listBanManiacWMatches
        .insertFromBanManiacWMatchesParameterListModel(BanManiacWMatches(nameManiac,secondUniqueIdByUser));
  }

  void insertPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromNameManiacParameterListPickManiacWhereMatches(String nameManiac) {
    listPickManiacWMatches
        .insertFromPickManiacWMatchesParameterListModel(PickManiacWMatches(nameManiac,firstUniqueIdByUser,DateTime.now(),ListBanMapsWMatches(List.empty(growable: true)),PickMapsWMatches(""),ListPickManiacPerkWMatches(List.empty(growable: true)),ListPickSurvivorPerkWMatches(List.empty(growable: true))));
  }

  void insertPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromNameManiacParameterListPickManiacWhereMatches(String nameManiac) {
    listPickManiacWMatches
        .insertFromPickManiacWMatchesParameterListModel(PickManiacWMatches(nameManiac,secondUniqueIdByUser,DateTime.now(),ListBanMapsWMatches(List.empty(growable: true)),PickMapsWMatches(""),ListPickManiacPerkWMatches(List.empty(growable: true)),ListPickSurvivorPerkWMatches(List.empty(growable: true))));
  }

  void insertLastPickManiacWhereMatchesParameterListPickManiacWhereMatches() {
    final notBannedAndPickedListManiacWhereMatchBalance = getNotBannedAndPickedListManiacWhereMatchBalanceParametersListBanManiacWhereMatchesAndListPickManiacWhereMatchesAndMatchBalance;
    final lastManiacWhereMatchBalance = notBannedAndPickedListManiacWhereMatchBalance.listModel.last;
    listPickManiacWMatches
        .insertFromPickManiacWMatchesParameterListModel(PickManiacWMatches(lastManiacWhereMatchBalance.maniac.name,"",DateTime.now(),ListBanMapsWMatches(List.empty(growable: true)),PickMapsWMatches(""),ListPickManiacPerkWMatches(List.empty(growable: true)),ListPickSurvivorPerkWMatches(List.empty(growable: true))));
  }

  void insertBanMapsWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromMapsParameterListPickManiacWhereMatches(Maps maps) {
    insertBanMapsWhereMatchesToPickManiacWhereMatchesFromMapsParameterListPickManiacWhereMatches(maps,firstUniqueIdByUser);
  }

  void insertBanMapsWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromMapsParameterListPickManiacWhereMatches(Maps maps) {
    insertBanMapsWhereMatchesToPickManiacWhereMatchesFromMapsParameterListPickManiacWhereMatches(maps,secondUniqueIdByUser);
  }

  void insertManiacPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromManiacPerkParameterListPickManiacWhereMatches(ManiacPerk maniacPerk) {
    insertManiacPerkWhereMatchesToPickManiacWhereMatchesFromManiacPerkParameterListPickManiacWhereMatches(maniacPerk,firstUniqueIdByUser);
  }

  void insertManiacPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromManiacPerkParameterListPickManiacWhereMatches(ManiacPerk maniacPerk) {
    insertManiacPerkWhereMatchesToPickManiacWhereMatchesFromManiacPerkParameterListPickManiacWhereMatches(maniacPerk,secondUniqueIdByUser);
  }

  void insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromSurvivorPerkParameterListPickManiacWhereMatches(SurvivorPerk survivorPerk) {
    insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesFromSurvivorPerkParameterListPickManiacWhereMatches(survivorPerk,firstUniqueIdByUser);
  }

  void insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromSurvivorPerkParameterListPickManiacWhereMatches(SurvivorPerk survivorPerk) {
    insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesFromSurvivorPerkParameterListPickManiacWhereMatches(survivorPerk,secondUniqueIdByUser);
  }

  @protected
  void insertBanMapsWhereMatchesToPickManiacWhereMatchesFromMapsParameterListPickManiacWhereMatches(Maps maps,String uniqueIdByUser) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    int iterationForListPickManiacWhereMatches = 0;
    for(PickManiacWMatches pickManiacWhereMatches in listPickManiacWMatches.listModel) {
      if(lastItemPickManiacWhereMatches.nameSurvivorPerk == pickManiacWhereMatches.nameSurvivorPerk) {
        break;
      }
      iterationForListPickManiacWhereMatches++;
    }
    listPickManiacWMatches
        .listModel[iterationForListPickManiacWhereMatches]
        .listBanMapsWMatches
        .insertFromBanMapsWMatchesParameterListModel(BanMapsWMatches(maps.name,uniqueIdByUser));
  }

  @protected
  void insertManiacPerkWhereMatchesToPickManiacWhereMatchesFromManiacPerkParameterListPickManiacWhereMatches(ManiacPerk maniacPerk,String uniqueIdByUser) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    int iterationForListPickManiacWhereMatches = 0;
    for(PickManiacWMatches pickManiacWhereMatches in listPickManiacWMatches.listModel) {
      if(lastItemPickManiacWhereMatches.nameSurvivorPerk == pickManiacWhereMatches.nameSurvivorPerk) {
        break;
      }
      iterationForListPickManiacWhereMatches++;
    }
    listPickManiacWMatches
        .listModel[iterationForListPickManiacWhereMatches]
        .listPickManiacPerkWMatches
        .insertFromPickManiacPerkWMatchesParameterListModel(PickManiacPerkWMatches(maniacPerk.perk.name,uniqueIdByUser));
  }

  @protected
  void insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesFromSurvivorPerkParameterListPickManiacWhereMatches(SurvivorPerk survivorPerk,String uniqueIdByUser) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    int iterationForListPickManiacWhereMatches = 0;
    for(PickManiacWMatches pickManiacWhereMatches in listPickManiacWMatches.listModel) {
      if(lastItemPickManiacWhereMatches.nameSurvivorPerk == pickManiacWhereMatches.nameSurvivorPerk) {
        break;
      }
      iterationForListPickManiacWhereMatches++;
    }
    listPickManiacWMatches
        .listModel[iterationForListPickManiacWhereMatches]
        .listPickSurvivorPerkWMatches
        .insertFromPickSurvivorPerkWMatchesParameterListModel(PickSurvivorPerkWMatches(survivorPerk.perk.name,uniqueIdByUser));
  }

  bool isTrueAndSystemPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickManiac;
  }

  bool isTrueAndSystemPickMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickMapsToManiac;
  }

  bool isTrueAndSystemPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickManiacPerkToManiac;
  }

  bool isTrueAndSystemPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickSurvivorPerkToManiac;
  }

  bool isTrueAndBanManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.banManiac;
  }

  bool isTrueAndPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickManiac;
  }

  bool isTrueAndBansMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.bansMapsToManiac;
  }

  bool isTrueAndPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickManiacPerkToManiac;
  }

  bool isTrueAndPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickSurvivorPerkToManiac;
  }

  bool isFalseAndSystemPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickManiac;
  }

  bool isFalseAndSystemPickMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickMapsToManiac;
  }

  bool isFalseAndSystemPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickManiacPerkToManiac;
  }

  bool isFalseAndSystemPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickSurvivorPerkToManiac;
  }

  bool isFalseAndBanManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.banManiac;
  }

  bool isFalseAndPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickManiac;
  }

  bool isFalseAndBansMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.bansMapsToManiac;
  }

  bool isFalseAndPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickManiacPerkToManiac;
  }

  bool isFalseAndPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickSurvivorPerkToManiac;
  }

  bool isDoneFirstStageBanManiacWhereMatchesParametersListBanManiacWhereMatchesAndMatchBalance() {
    return listBanManiacWMatches.listModel.length
        == matchBalance.getNumberOfBannedManiacsInTheFirstStageWhereEvenAndInterestFormula;
  }

  bool isDoneSecondStageBanManiacWhereMatchesParametersListBanManiacWhereMatchesAndMatchBalance() {
    return listBanManiacWMatches.listModel.length
        == matchBalance.getNumberOfBannedManiacsParametersListManiacWMatchBalanceAndNumberOfRounds;
  }

  bool isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() {
    return listPickManiacWMatches.listModel.length
        == (matchBalance.numberOfRounds - 1);
  }

  bool isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() {
    return listPickManiacWMatches.listModel.length
        == matchBalance.numberOfRounds;
  }

  bool isBanMapsEqualsLengthTakeOneMapsByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    final lengthByListBanMapsWhereMatchesByLastItemPickManiacWhereMatches = lastItemPickManiacWhereMatches
        .listBanMapsWMatches
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
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.isWhereNotEqualsParametersLengthPickManiacPerkAndListManiacPerk();
  }

  bool isLengthPickSPNotEqualsLengthListSPByLastManiacWhereMatchBalanceParameterMatchBalance() {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.isWhereNotEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerk();
  }

  bool isLengthPickSPEqualsLengthListSPAndIsNotEmptyListSPByLastManiacWhereMatchBalanceParameterMatchBalance() {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.isWhereNotEmptyAndEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerk();
  }

  bool isPickManiacPerkForUniqueIdByUserWhereFirstEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickManiacPerkEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(firstUniqueIdByUser);
  }

  bool isPickManiacPerkForUniqueIdByUserWhereSecondEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickManiacPerkEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(secondUniqueIdByUser);
  }

  bool isPickManiacPerkForUniqueIdByUserWhereFirstNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickManiacPerkNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(firstUniqueIdByUser);
  }

  bool isPickManiacPerkForUniqueIdByUserWhereSecondNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickManiacPerkNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(secondUniqueIdByUser);
  }

  bool isPickSurvivorPerkForUniqueIdByUserWhereFirstEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickSurvivorPerkEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(firstUniqueIdByUser);
  }

  bool isPickSurvivorPerkForUniqueIdByUserWhereSecondEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickSurvivorPerkEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(secondUniqueIdByUser);
  }

  bool isPickSurvivorPerkForUniqueIdByUserWhereFirstNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickSurvivorPerkNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(firstUniqueIdByUser);
  }

  bool isPickSurvivorPerkForUniqueIdByUserWhereSecondNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickSurvivorPerkNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(secondUniqueIdByUser);
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
    for(RoundWMatches roundWhereMatches in listFinishedRoundWhereMatches.listModel)  {
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
        .listPickManiacPerkWMatches
        .getListPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)
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
        .listPickManiacPerkWMatches
        .getListPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)
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
        .listPickSurvivorPerkWMatches
        .getListPickSurvivorPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)
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
        .listPickSurvivorPerkWMatches
        .getListPickSurvivorPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)
        .length;
    final lengthPickSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches
        .lengthPickSurvivorPerk;
    return lengthByListPickSurvivorPerkWhereMatchesFromUniqueIdByUserByListPickSurvivorPerkWhereMatchesByLastItemPickManiacWhereMatches
        != lengthPickSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches;
  }
}