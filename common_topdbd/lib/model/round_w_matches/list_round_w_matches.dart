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

  T get getLastItemWhereFinishedListRoundWMatches {
    return getFinishedListRoundWMatchesParameterListModel.last;
  }

  T get getFirstItemWhereUnfinishedListRoundWMatches {
    return getUnfinishedListRoundWMatchesParameterListModel.first;
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
    super.insertFromModelParameterListModel(roundWMatches);
  }

  void updateFromRoundWMatchesParameterListModel(T roundWMatches) {
    super.updateFromModelParameterListModel(roundWMatches);
  }

  bool isWhereWinMatchWFirstUniqueIdByUser() {
    final listIntWithTwoItemWhereCountingWhoWonTheMatch = getListWithTwoItemWhereCountingWhoWonTheMatch;
    return listIntWithTwoItemWhereCountingWhoWonTheMatch[0] > listIntWithTwoItemWhereCountingWhoWonTheMatch[1];
  }
}