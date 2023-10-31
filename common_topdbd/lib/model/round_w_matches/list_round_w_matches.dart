import 'package:common_topdbd/model/round_w_matches/enum_round_status.dart';
import 'package:common_topdbd/model/round_w_matches/round_w_matches.dart';
import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:common_topdbd/named_utility/enum_win_number_user.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListRoundWMatches<T extends RoundWMatches> extends BaseListModel<T> {
  const ListRoundWMatches(super.listModel);

  @override
  ListRoundWMatches<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListRoundWMatches<T>(newListModel);
  }

  List<T> get getFinishedListRoundWMatchesParameterListModel {
    final endOfTheRoundByEnumRoundStatus = EnumRoundStatus.endOfTheRound;
    final listRoundWMatches = ListRoundWMatches<T>(List<T>.empty(growable: true));
    for(T itemModel in listModel) {
      if(itemModel.enumRoundStatus != endOfTheRoundByEnumRoundStatus) {
        continue;
      }
      listRoundWMatches.insertFromRoundWMatchesParameterListModel(itemModel.getClone as T);
    }
    return listRoundWMatches.listModel;
  }

  List<T> get getUnfinishedListRoundWMatchesParameterListModel {
    final endOfTheRoundByEnumRoundStatus = EnumRoundStatus.endOfTheRound;
    final listRoundWMatches = ListRoundWMatches<T>(List<T>.empty(growable: true));
    for(T itemModel in listModel) {
      if(itemModel.enumRoundStatus == endOfTheRoundByEnumRoundStatus) {
        continue;
      }
      listRoundWMatches.insertFromRoundWMatchesParameterListModel(itemModel.getClone as T);
    }
    return listRoundWMatches.listModel;
  }

  List<int> get getListWithTwoItemWhereCountingWhoWonTheMatch {
    final finishedListRoundWMatchesParameterListModel = getFinishedListRoundWMatchesParameterListModel;
    int iterationWinRoundWFirstUniqueIdByUser = 0;
    int iterationWinRoundWSecondUniqueIdByUser = 0;
    for(RoundWMatches itemFinishedListRoundWMatchesParameterListModel in finishedListRoundWMatchesParameterListModel)  {
      if(itemFinishedListRoundWMatchesParameterListModel.isWhereWinRoundWFirstUniqueIdByUserParametersTwo()) {
        iterationWinRoundWFirstUniqueIdByUser++;
        continue;
      }
      iterationWinRoundWSecondUniqueIdByUser++;
    }
    return [iterationWinRoundWFirstUniqueIdByUser,iterationWinRoundWSecondUniqueIdByUser];
  }

  int getNewStatsWFirstUniqueIdByUserWhereThereIsEloFromTwo(int ratingPointsByStatsWFirstUniqueIdByUser,int ratingPointsByStatsWSecondUniqueIdByUser) {
    if(isWhereWinMatchWFirstUniqueIdByUser()) {
      return AlgorithmsUtility.getEloWhereCalculationWFirstUserFromKFactorAndRatingFirstUserAndRatingSecondUserAndEnumWinNumberUser(
          50,
          ratingPointsByStatsWFirstUniqueIdByUser,
          ratingPointsByStatsWSecondUniqueIdByUser,
          EnumWinNumberUser.winFirstUser);
    }
    return AlgorithmsUtility.getEloWhereCalculationWFirstUserFromKFactorAndRatingFirstUserAndRatingSecondUserAndEnumWinNumberUser(
        50,
        ratingPointsByStatsWFirstUniqueIdByUser,
        ratingPointsByStatsWSecondUniqueIdByUser,
        EnumWinNumberUser.winSecondUser);
  }

  int getNewStatsWSecondUniqueIdByUserWhereThereIsEloFromTwo(int ratingPointsByStatsWFirstUniqueIdByUser,int ratingPointsByStatsWSecondUniqueIdByUser) {
    if(isWhereWinMatchWFirstUniqueIdByUser()) {
      return AlgorithmsUtility.getEloWhereCalculationWSecondUserFromKFactorAndRatingFirstUserAndRatingSecondUserAndEnumWinNumberUser(
          50,
          ratingPointsByStatsWFirstUniqueIdByUser,
          ratingPointsByStatsWSecondUniqueIdByUser,
          EnumWinNumberUser.winFirstUser);
    }
    return AlgorithmsUtility.getEloWhereCalculationWSecondUserFromKFactorAndRatingFirstUserAndRatingSecondUserAndEnumWinNumberUser(
        50,
        ratingPointsByStatsWFirstUniqueIdByUser,
        ratingPointsByStatsWSecondUniqueIdByUser,
        EnumWinNumberUser.winSecondUser);
  }

  int getNumberOfRatingPointsPerMatchWFirstUniqueIdByUserWhereNewStatsFromTwo(int ratingPointsByStatsWFirstUniqueIdByUser,int ratingPointsByStatsWSecondUniqueIdByUser) {
    return getNewStatsWFirstUniqueIdByUserWhereThereIsEloFromTwo(ratingPointsByStatsWFirstUniqueIdByUser,ratingPointsByStatsWSecondUniqueIdByUser) - ratingPointsByStatsWFirstUniqueIdByUser;
  }

  int getNumberOfRatingPointsPerMatchWSecondUniqueIdByUserWhereNewStatsFromTwo(int ratingPointsByStatsWFirstUniqueIdByUser,int ratingPointsByStatsWSecondUniqueIdByUser) {
    return getNewStatsWSecondUniqueIdByUserWhereThereIsEloFromTwo(ratingPointsByStatsWFirstUniqueIdByUser,ratingPointsByStatsWSecondUniqueIdByUser) - ratingPointsByStatsWSecondUniqueIdByUser;
  }

  String get getMatchScore {
    final listWithTwoItemWhereCountingWhoWonTheMatch = getListWithTwoItemWhereCountingWhoWonTheMatch;
    final firstItemListWithTwoItemWhereCountingWhoWonTheMatch = listWithTwoItemWhereCountingWhoWonTheMatch[0];
    final secondItemListWithTwoItemWhereCountingWhoWonTheMatch = listWithTwoItemWhereCountingWhoWonTheMatch[1];
    return "$firstItemListWithTwoItemWhereCountingWhoWonTheMatch:$secondItemListWithTwoItemWhereCountingWhoWonTheMatch";
  }

  void insertFromRoundWMatchesParameterListModel(T roundWMatches) {
    super.insertFromNewModelParameterListModel(roundWMatches);
  }

  void updateFromRoundWMatchesParameterListModel(T roundWMatches) {
    super.updateFromNewModelParameterListModel(roundWMatches);
  }

  void updateWhereIsStartTimerWFirstUniqueIdByUserSettingTrueParameterListModel() {
    final first = getUnfinishedListRoundWMatchesParameterListModel.first;
    for(T itemModel in listModel) {
      if(itemModel.round == first.round) {
        updateFromRoundWMatchesParameterListModel(RoundWMatches(
            itemModel.round,
            itemModel.pickManiacWMatches.getClone,
            itemModel.enumRoundStatus.name,
            itemModel.isRoleManiacWFirstUniqueIdByUser,
            true,
            itemModel.isStartTimerWSecondUniqueIdByUser,
            itemModel.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser,
            itemModel.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser) as T);
        break;
      }
    }
  }

  void updateWhereIsStartTimerWSecondUniqueIdByUserSettingTrueParameterListModel() {
    final first = getUnfinishedListRoundWMatchesParameterListModel.first;
    for(T itemModel in listModel) {
      if(itemModel.round == first.round) {
        updateFromRoundWMatchesParameterListModel(RoundWMatches(
            itemModel.round,
            itemModel.pickManiacWMatches.getClone,
            itemModel.enumRoundStatus.name,
            itemModel.isRoleManiacWFirstUniqueIdByUser,
            itemModel.isStartTimerWFirstUniqueIdByUser,
            true,
            itemModel.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser,
            itemModel.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser) as T);
        break;
      }
    }
  }

  void updateWhereSwapRoleManiacWFalseStartTimerWFirstUniqueIdByUserFromOneParameterListModel(int numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser) {
    final first = getUnfinishedListRoundWMatchesParameterListModel.first;
    for(T itemModel in listModel) {
      if(itemModel.round == first.round) {
        updateFromRoundWMatchesParameterListModel(RoundWMatches(
            itemModel.round,
            itemModel.pickManiacWMatches.getClone,
            itemModel.getChangedParameterEnumRoundStatus.name,
            itemModel.isWhereSwapParameterIsRoleManiacWFirstUniqueIdByUser(),
            false,
            false,
            numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser,
            itemModel.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser) as T);
        break;
      }
    }
  }

  void updateWhereSwapRoleManiacWFalseStartTimerWSecondUniqueIdByUserFromOneParameterListModel(int numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser) {
    final first = getUnfinishedListRoundWMatchesParameterListModel.first;
    for(T itemModel in listModel) {
      if(itemModel.round == first.round) {
        updateFromRoundWMatchesParameterListModel(RoundWMatches(
            itemModel.round,
            itemModel.pickManiacWMatches.getClone,
            itemModel.getChangedParameterEnumRoundStatus.name,
            itemModel.isWhereSwapParameterIsRoleManiacWFirstUniqueIdByUser(),
            false,
            false,
            itemModel.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser,
            numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser) as T);
        break;
      }
    }
  }

  void updateWhereEnumRoundStatusSettingEndOfTheRoundParameterListModel() {
    final first = getUnfinishedListRoundWMatchesParameterListModel.first;
    for(T itemModel in listModel) {
      if(itemModel.round == first.round) {
        updateFromRoundWMatchesParameterListModel(RoundWMatches(
            itemModel.round,
            itemModel.pickManiacWMatches.getClone,
            EnumRoundStatus.endOfTheRound.name,
            itemModel.isRoleManiacWFirstUniqueIdByUser,
            itemModel.isStartTimerWFirstUniqueIdByUser,
            itemModel.isStartTimerWSecondUniqueIdByUser,
            itemModel.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser,
            itemModel.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser) as T);
        break;
      }
    }
  }

  bool isWhereWinMatchWFirstUniqueIdByUser() {
    final listIntWithTwoItemWhereCountingWhoWonTheMatch = getListWithTwoItemWhereCountingWhoWonTheMatch;
    return listIntWithTwoItemWhereCountingWhoWonTheMatch[0] > listIntWithTwoItemWhereCountingWhoWonTheMatch[1];
  }

  bool isWhereFinishedListRoundWMatchesMoreThanUnfinishedListRoundWMatches() {
    final finishedListRoundWMatchesParameterListModel = getFinishedListRoundWMatchesParameterListModel;
    final unfinishedListRoundWMatchesParameterListModel = getUnfinishedListRoundWMatchesParameterListModel;
    return finishedListRoundWMatchesParameterListModel.length > unfinishedListRoundWMatchesParameterListModel.length;
  }

  bool isWhereFinishedListRoundWMatchesAndWereWonByOneUser() {
    final finishedListRoundWMatchesParameterListModel = getFinishedListRoundWMatchesParameterListModel;
    int iterationWinRoundWFirstUniqueIdByUser = 0;
    int iterationWinRoundWSecondUniqueIdByUser = 0;
    for(RoundWMatches finishedItemRoundWMatchesParameterListModel in finishedListRoundWMatchesParameterListModel)  {
      if(finishedItemRoundWMatchesParameterListModel.isWhereWinRoundWFirstUniqueIdByUserParametersTwo()) {
        iterationWinRoundWFirstUniqueIdByUser++;
        continue;
      }
      iterationWinRoundWSecondUniqueIdByUser++;
    }
    if(iterationWinRoundWFirstUniqueIdByUser == finishedListRoundWMatchesParameterListModel.length) {
      return true;
    }
    if(iterationWinRoundWSecondUniqueIdByUser == finishedListRoundWMatchesParameterListModel.length) {
      return true;
    }
    return false;
  }
}