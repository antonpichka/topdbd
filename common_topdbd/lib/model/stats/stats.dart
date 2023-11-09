import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Stats extends BaseModel {
  final String uniqueIdByUser;
  final int seasonNumberBySeason;
  final int matchesWon;
  final int matchesLost;
  final int ratingPoints;

  const Stats(this.uniqueIdByUser,this.seasonNumberBySeason,this.matchesWon,this.matchesLost,this.ratingPoints) : super(uniqueIdByUser);

  @override
  Stats get getClone => Stats(uniqueIdByUser, seasonNumberBySeason, matchesWon, matchesLost, ratingPoints);

  @override
  String toString() {
    return "Stats(uniqueIdByUser: $uniqueIdByUser, "
        "seasonNumberBySeason: $seasonNumberBySeason, "
        "matchesWon: $matchesWon, "
        "matchesLost: $matchesLost, "
        "ratingPoints: $ratingPoints)";
  }

  Stats getStatsWhereNewAndWinMatchFromOneParametersFour(int newRatingPoints) {
    final newMatchesWon = matchesWon + 1;
    return Stats(
        uniqueIdByUser,
        seasonNumberBySeason,
        newMatchesWon,
        matchesLost,
        newRatingPoints);
  }

  Stats getStatsWhereNewAndLostMatchFromOneParametersFour(int newRatingPoints) {
    final newMatchesLost = matchesLost + 1;
    return Stats(
        uniqueIdByUser,
        seasonNumberBySeason,
        matchesWon,
        newMatchesLost,
        newRatingPoints);
  }
}