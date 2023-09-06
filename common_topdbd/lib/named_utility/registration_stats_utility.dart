import 'package:meta/meta.dart';

@immutable
final class RegistrationStatsUtility {
  final String uniqueIdByUser;
  final int seasonNumberBySeason;
  final int ratingPoints;

  const RegistrationStatsUtility(this.uniqueIdByUser, this.seasonNumberBySeason, this.ratingPoints);
}