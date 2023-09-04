import 'package:common_topdbd/model/stats/list_stats.dart';
import 'package:common_topdbd/model/stats/stats.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:common_topdbd/named_utility/registration_stats_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class StatsQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationStatsUtility<T extends Stats,Y extends ListStats<T>> extends BaseInsertModelToNamedServiceParameterNamedDataSource<T,RegistrationStatsUtility> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> insertStatsToFirebaseFirestoreServiceParameterRegistrationStatsUtilityDS(RegistrationStatsUtility parameter) {
    return insertModelToNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<T>> insertModelToNamedServiceParameterNamedDS(RegistrationStatsUtility parameter)
  async {
    try {
      final documentByStatsWhereAdding = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.stats)
          .add({
        KeysFirebaseFirestoreServiceUtility.statsQUniqueIdByUser : parameter.uniqueIdByUser,
        KeysFirebaseFirestoreServiceUtility.statsQSeasonNumberBySeason : parameter.seasonNumberBySeason,
        KeysFirebaseFirestoreServiceUtility.statsQMatchesWon : 0,
        KeysFirebaseFirestoreServiceUtility.statsQMatchesLost : 0,
        KeysFirebaseFirestoreServiceUtility.statsQRatingPoints : parameter.ratingPoints,
      });
      final documentByStats = await documentByStatsWhereAdding?.get();
      if(!(documentByStats?.exists ?? false)) {
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.statsQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationStatsUtilityQWhereLocalExceptionGuiltyUserNoExists));
      }
      return Result<T>.success(Stats(
          documentByStats?.data()?[KeysFirebaseFirestoreServiceUtility.statsQUniqueIdByUser],
          documentByStats?.data()?[KeysFirebaseFirestoreServiceUtility.statsQSeasonNumberBySeason],
          documentByStats?.data()?[KeysFirebaseFirestoreServiceUtility.statsQMatchesWon],
          documentByStats?.data()?[KeysFirebaseFirestoreServiceUtility.statsQMatchesLost],
          documentByStats?.data()?[KeysFirebaseFirestoreServiceUtility.statsQRatingPoints]) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}