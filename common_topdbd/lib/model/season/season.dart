import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Season extends BaseModel {
  final int seasonNumber;
  final String strNumberOfMatchesPlayedPerSeason;
  final String strNumberOfUniquePlayersWhoPlayedInASeason;
  final DateTime startOfSeasonTime;
  final DateTime endOfSeasonTime;

  const Season(this.seasonNumber,this.strNumberOfMatchesPlayedPerSeason,this.strNumberOfUniquePlayersWhoPlayedInASeason,this.startOfSeasonTime,this.endOfSeasonTime) : super("$seasonNumber");

  @override
  Season get getClone => Season(seasonNumber, strNumberOfMatchesPlayedPerSeason, strNumberOfUniquePlayersWhoPlayedInASeason,startOfSeasonTime, endOfSeasonTime);
}