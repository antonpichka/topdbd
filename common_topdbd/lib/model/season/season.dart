import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class Season extends BaseModel {
  final int? seasonNumber;
  final String? strNumberOfMatchesPlayedPerSeason;
  final String? strNumberOfUniquePlayersWhoPlayedInASeason;
  final DateTime? endOfSeasonTime;

  Season.success(this.seasonNumber,this.strNumberOfMatchesPlayedPerSeason,this.strNumberOfUniquePlayersWhoPlayedInASeason,this.endOfSeasonTime) : super.success(seasonNumber.toString());
  Season.exception(super.exception) :
        seasonNumber = null,
        strNumberOfMatchesPlayedPerSeason = null,
        strNumberOfUniquePlayersWhoPlayedInASeason = null,
        endOfSeasonTime = null,
        super.exception();

  @override
  Season get getCloneModel => Season.success(seasonNumber, strNumberOfMatchesPlayedPerSeason, strNumberOfUniquePlayersWhoPlayedInASeason, endOfSeasonTime);
}