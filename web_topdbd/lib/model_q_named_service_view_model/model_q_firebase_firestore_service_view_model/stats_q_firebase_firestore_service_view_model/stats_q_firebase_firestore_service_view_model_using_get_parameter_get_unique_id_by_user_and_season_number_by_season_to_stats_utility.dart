import 'package:common_topdbd/model/stats/list_stats.dart';
import 'package:common_topdbd/model/stats/stats.dart';
import 'package:common_topdbd/named_utility/unique_id_by_user_w_season_number_by_season_to_stats_utility.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class StatsQFirebaseFirestoreServiceViewModelUsingGetParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtility<T extends Stats,Y extends ListStats<T>> extends BaseGetModelFromNamedServiceParameterNamedDataSource<T,UniqueIdByUserWSeasonNumberBySeasonToStatsUtility> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> getStatsFromFirebaseFirestoreServiceParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtilityDS(UniqueIdByUserWSeasonNumberBySeasonToStatsUtility parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<T>> getModelFromNamedServiceParameterNamedDS(UniqueIdByUserWSeasonNumberBySeasonToStatsUtility parameter)
  async {
    try {
      final documentByStats = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.stats)
          .where(KeysFirebaseFirestoreServiceUtility.statsQUniqueIdByUser,isEqualTo: parameter.uniqueIdByUser)
          .where(KeysFirebaseFirestoreServiceUtility.statsQSeasonNumberBySeason,isEqualTo: parameter.seasonNumberBySeason)
          .limit(1)
          .get();
      if((documentByStats?.size ?? 0) <= 0) {
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.statsQFirebaseFirestoreServiceViewModelUsingGetParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtilityQWhereLocalExceptionGuiltyUserNoExists));
      }
      return Result<T>.success(Stats(
          documentByStats?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.statsQUniqueIdByUser],
          documentByStats?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.statsQSeasonNumberBySeason],
          documentByStats?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.statsQMatchesWon],
          documentByStats?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.statsQMatchesLost],
          documentByStats?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.statsQRatingPoints]) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }

}