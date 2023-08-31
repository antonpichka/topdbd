import 'package:common_topdbd/model/season/list_season.dart';
import 'package:common_topdbd/model/season/season.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/i_get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class SeasonQFirebaseFirestoreServiceViewModelUsingGetNPForLastSeasonWhereSortParameterSeasonNumber<T extends Season,Y extends ListSeason<T>>
    implements IGetModelFromNamedServiceNPDataSource<T>
{
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<T> getSeasonFromFirebaseFirestoreServiceNPDS() {
    return getModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceNPDS()
  async {
    try {
      final documentBySeason = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.season)
          .orderBy(KeysFirebaseFirestoreServiceUtility.seasonQSeasonNumber,descending: true)
          .limit(1)
          .get();
      if((documentBySeason?.size ?? 0) <= 0) {
        return Season.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.seasonQFirebaseFirestoreServiceViewModelUsingGetNPForLastSeasonWhereSortParameterSeasonNumberQWhereLocalExceptionGuiltyUserNoExists)) as T;
      }
      return Season.success(
          documentBySeason?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.seasonQSeasonNumber],
          documentBySeason?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.seasonQStrNumberOfMatchesPlayedPerSeason],
          documentBySeason?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.seasonQStrNumberOfUniquePlayersWhoPlayedInASeason],
          documentBySeason?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.seasonQEndOfSeasonTime]) as T;
    } catch(e) {
      return Season.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}