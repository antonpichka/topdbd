import 'package:common_topdbd/model/country/country.dart';
import 'package:common_topdbd/model/country/list_country.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class GetEECountryEEFromUniqueIdByUserEEParameterFirebaseFirestoreService<T extends Country,Y extends ListCountry<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> getCountryFromUniqueIdByUserParameterFirebaseFirestoreService(String parameter)
  async {
    try {
      final documentByCountry = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.country)
          .where(KeysFirebaseFirestoreServiceUtility.countryQQUniqueIdByUser,isEqualTo: parameter)
          .limit(1)
          .get();
      if((documentByCountry?.size ?? 0) <= 0) {
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.getEECountryEEFromUniqueIdByUserEEParameterFirebaseFirestoreService));
      }
      return Result<T>.success(Country(
          documentByCountry?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.countryQQUniqueIdByUser],
          documentByCountry?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.countryQQNameCountry]) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}