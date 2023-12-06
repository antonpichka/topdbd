import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common_topdbd/model/season/list_season.dart';
import 'package:common_topdbd/model/season/season.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class GetListEESeasonEEWhereNotEqualsAndSortingSeasonNumberOrderByDescEEFromSeasonNumberEEParameterFirebaseFirestoreService<T extends Season,Y extends ListSeason<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<Y>> getListSeasonWhereNotEqualsAndSortingSeasonNumberOrderByDescFromSeasonNumberParameterFirebaseFirestoreService(int seasonNumber) async {
    try {
      final listDocumentBySeason = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.season)
          .where(KeysFirebaseFirestoreServiceUtility.seasonQQSeasonNumber,isNotEqualTo: seasonNumber)
          .orderBy(KeysFirebaseFirestoreServiceUtility.seasonQQSeasonNumber,descending: true)
          .get();
      List<T> listSeason = List.empty(growable: true);
      for(QueryDocumentSnapshot<Map<String,dynamic>> documentBySeason in listDocumentBySeason?.docs ?? List.empty(growable: true)) {
        listSeason.add(Season(
            documentBySeason.data()[KeysFirebaseFirestoreServiceUtility.seasonQQSeasonNumber] ?? 0,
            documentBySeason.data()[KeysFirebaseFirestoreServiceUtility.seasonQQNumberOfMatchesPlayedPerSeason] ?? 0,
            documentBySeason.data()[KeysFirebaseFirestoreServiceUtility.seasonQQNumberOfUniquePlayersWhoPlayedInASeason] ?? 0,
            (documentBySeason.data()[KeysFirebaseFirestoreServiceUtility.seasonQQStartOfSeasonTime]).toDate() ?? DateTime.now(),
            (documentBySeason.data()[KeysFirebaseFirestoreServiceUtility.seasonQQEndOfSeasonTime]).toDate() ?? DateTime.now()) as T);
      }
      return Result<Y>.success(ListSeason(listSeason) as Y);
    } catch(e) {
      return Result<Y>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}