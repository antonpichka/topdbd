import 'package:common_topdbd/model/stats/list_stats.dart';
import 'package:common_topdbd/model/stats/stats.dart';
import 'package:common_topdbd/named_utility/unique_id_by_user_w_season_number_by_season_to_stats_utility.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class GetEEStatsEEFromUniqueIdByUserWSeasonNumberBySeasonToStatsUtilityEEParameterFirebaseFirestoreService<T extends Stats,Y extends ListStats<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> getStatsFromUniqueIdByUserWSeasonNumberBySeasonToStatsUtilityParameterFirebaseFirestoreService(UniqueIdByUserWSeasonNumberBySeasonToStatsUtility uniqueIdByUserWSeasonNumberBySeasonToStatsUtility)
  async {
    try {
      final documentByStats = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.stats)
          .where(KeysFirebaseFirestoreServiceUtility.statsQQUniqueIdByUser,isEqualTo: uniqueIdByUserWSeasonNumberBySeasonToStatsUtility.uniqueIdByUser)
          .where(KeysFirebaseFirestoreServiceUtility.statsQQSeasonNumberBySeason,isEqualTo: uniqueIdByUserWSeasonNumberBySeasonToStatsUtility.seasonNumberBySeason)
          .limit(1)
          .get();
      if((documentByStats?.size ?? 0) <= 0) {
        return Result<T>.exception(LocalException(this,EnumGuilty.user,KeysExceptionUtility.getEEStatsEEFromUniqueIdByUserWSeasonNumberBySeasonToStatsUtilityEEParameterFirebaseFirestoreService));
      }
      return Result<T>.success(Stats(
          documentByStats?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.statsQQUniqueIdByUser],
          documentByStats?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.statsQQSeasonNumberBySeason],
          documentByStats?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.statsQQMatchesWon],
          documentByStats?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.statsQQMatchesLost],
          documentByStats?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.statsQQRatingPoints]) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}