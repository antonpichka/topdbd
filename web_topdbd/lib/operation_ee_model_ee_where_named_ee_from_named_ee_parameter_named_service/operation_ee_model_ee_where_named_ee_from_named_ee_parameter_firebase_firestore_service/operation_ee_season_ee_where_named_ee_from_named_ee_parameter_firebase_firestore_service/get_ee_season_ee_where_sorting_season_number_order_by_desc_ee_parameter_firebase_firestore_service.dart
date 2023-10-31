import 'package:common_topdbd/model/season/list_season.dart';
import 'package:common_topdbd/model/season/season.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class GetEESeasonEEWhereSortingSeasonNumberOrderByDescEEParameterFirebaseFirestoreService<T extends Season,Y extends ListSeason<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> getSeasonWhereSortingSeasonNumberOrderByDescParameterFirebaseFirestoreService()
  async {
    try {
      final documentBySeason = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.season)
          .orderBy(KeysFirebaseFirestoreServiceUtility.seasonQQSeasonNumber,descending: true)
          .limit(1)
          .get();
      if((documentBySeason?.size ?? 0) <= 0) {
        return Result<T>.exception(LocalException(this,EnumGuilty.user,KeysExceptionUtility.getEESeasonEEWhereSortingSeasonNumberOrderByDescEEParameterFirebaseFirestoreService));
      }
      return Result<T>.success(Season(
          documentBySeason?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.seasonQQSeasonNumber],
          documentBySeason?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.seasonQQStrNumberOfMatchesPlayedPerSeason],
          documentBySeason?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.seasonQQStrNumberOfUniquePlayersWhoPlayedInASeason],
          (documentBySeason?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.seasonQQStartOfSeasonTime]).toDate(),
          (documentBySeason?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.seasonQQEndOfSeasonTime]).toDate()) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}