import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class Stats extends BaseModel {
  final String? uniqueIdByUser;
  final int? seasonNumberBySeason;
  final int? matchesWon;
  final int? matchesLost;
  final int? ratingPoints;

  Stats.success(this.uniqueIdByUser,this.seasonNumberBySeason,this.matchesWon,this.matchesLost,this.ratingPoints) : super.success(uniqueIdByUser);
  Stats.exception(super.exception) :
        uniqueIdByUser = null,
        seasonNumberBySeason = null,
        matchesWon = null,
        matchesLost = null,
        ratingPoints = null,
        super.exception();

  @override
  Stats get getCloneModel => Stats.success(uniqueIdByUser, seasonNumberBySeason, matchesWon, matchesLost, ratingPoints);
}