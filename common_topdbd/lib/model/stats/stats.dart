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
  Stats get getCloneModel => Stats(uniqueIdByUser, seasonNumberBySeason, matchesWon, matchesLost, ratingPoints);
}