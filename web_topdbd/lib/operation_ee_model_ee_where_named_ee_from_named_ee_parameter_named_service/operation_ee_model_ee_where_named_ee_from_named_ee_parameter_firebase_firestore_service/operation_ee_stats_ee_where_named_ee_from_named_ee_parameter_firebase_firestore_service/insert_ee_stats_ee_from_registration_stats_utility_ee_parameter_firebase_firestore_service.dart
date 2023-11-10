import 'package:common_topdbd/model/stats/list_stats.dart';
import 'package:common_topdbd/model/stats/stats.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:common_topdbd/named_utility/registration_stats_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class InsertEEStatsEEFromRegistrationStatsUtilityEEParameterFirebaseFirestoreService<T extends Stats,Y extends ListStats<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> insertStatsFromRegistrationStatsUtilityParameterFirebaseFirestoreService(RegistrationStatsUtility registrationStatsUtility)
  async {
    try {
      final documentByStatsWhereAdding = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.stats)
          .add({
        KeysFirebaseFirestoreServiceUtility.statsQQUniqueIdByUser : registrationStatsUtility.uniqueIdByUser,
        KeysFirebaseFirestoreServiceUtility.statsQQSeasonNumberBySeason : registrationStatsUtility.seasonNumberBySeason,
        KeysFirebaseFirestoreServiceUtility.statsQQMatchesWon : 0,
        KeysFirebaseFirestoreServiceUtility.statsQQMatchesLost : 0,
        KeysFirebaseFirestoreServiceUtility.statsQQRatingPoints : registrationStatsUtility.ratingPoints,
      });
      final documentByStats = await documentByStatsWhereAdding?.get();
      if(!(documentByStats?.exists ?? false)) {
        return Result<T>.exception(LocalException(this,EnumGuilty.user,KeysExceptionUtility.insertEEStatsEEFromRegistrationStatsUtilityEEParameterFirebaseFirestoreService));
      }
      return Result<T>.success(Stats(
          documentByStats?.data()?[KeysFirebaseFirestoreServiceUtility.statsQQUniqueIdByUser] ?? "",
          documentByStats?.data()?[KeysFirebaseFirestoreServiceUtility.statsQQSeasonNumberBySeason] ?? 0,
          documentByStats?.data()?[KeysFirebaseFirestoreServiceUtility.statsQQMatchesWon] ?? 0,
          documentByStats?.data()?[KeysFirebaseFirestoreServiceUtility.statsQQMatchesLost] ?? 0,
          documentByStats?.data()?[KeysFirebaseFirestoreServiceUtility.statsQQRatingPoints] ?? 0) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}