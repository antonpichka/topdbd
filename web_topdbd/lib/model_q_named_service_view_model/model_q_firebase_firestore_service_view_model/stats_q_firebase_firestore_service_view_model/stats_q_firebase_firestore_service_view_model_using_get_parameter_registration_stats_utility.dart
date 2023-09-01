import 'package:common_topdbd/model/stats/list_stats.dart';
import 'package:common_topdbd/model/stats/stats.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:common_topdbd/named_utility/registration_stats_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class StatsQFirebaseFirestoreServiceViewModelUsingGetParameterRegistrationStatsUtility<T extends Stats,Y extends ListStats<T>> extends BaseGetModelFromNamedServiceParameterNamedDataSource<T,RegistrationStatsUtility> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<T> getStatsFromFirebaseFirestoreServiceParameterRegistrationStatsUtilityDS(RegistrationStatsUtility parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceParameterNamedDS(RegistrationStatsUtility parameter)
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
        return Stats.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.statsQFirebaseFirestoreServiceViewModelUsingGetParameterRegistrationStatsUtilityQWhereLocalExceptionGuiltyUserNoExists)) as T;
      }
      return Stats.success(
          documentByStats?.data()?[KeysFirebaseFirestoreServiceUtility.statsQUniqueIdByUser],
          documentByStats?.data()?[KeysFirebaseFirestoreServiceUtility.statsQSeasonNumberBySeason],
          documentByStats?.data()?[KeysFirebaseFirestoreServiceUtility.statsQMatchesWon],
          documentByStats?.data()?[KeysFirebaseFirestoreServiceUtility.statsQMatchesLost],
          documentByStats?.data()?[KeysFirebaseFirestoreServiceUtility.statsQRatingPoints]) as T;
    } catch(e) {
      return Stats.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}