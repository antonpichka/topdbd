import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Season extends BaseModel {
  final int seasonNumber;
  final int numberOfMatchesPlayedPerSeason;
  final int numberOfUniquePlayersWhoPlayedInASeason;
  final DateTime startOfSeasonTime;
  final DateTime endOfSeasonTime;

  const Season(this.seasonNumber,this.numberOfMatchesPlayedPerSeason,this.numberOfUniquePlayersWhoPlayedInASeason,this.startOfSeasonTime,this.endOfSeasonTime) : super("$seasonNumber");

  @override
  Season get getClone => Season(seasonNumber, numberOfMatchesPlayedPerSeason, numberOfUniquePlayersWhoPlayedInASeason,startOfSeasonTime, endOfSeasonTime);

  @override
  String toString() {
    return "Season(seasonNumber: $seasonNumber, "
        "numberOfMatchesPlayedPerSeason: $numberOfMatchesPlayedPerSeason, "
        "numberOfUniquePlayersWhoPlayedInASeason: $numberOfUniquePlayersWhoPlayedInASeason, "
        "startOfSeasonTime: $startOfSeasonTime, "
        "endOfSeasonTime: $endOfSeasonTime)";
  }
}