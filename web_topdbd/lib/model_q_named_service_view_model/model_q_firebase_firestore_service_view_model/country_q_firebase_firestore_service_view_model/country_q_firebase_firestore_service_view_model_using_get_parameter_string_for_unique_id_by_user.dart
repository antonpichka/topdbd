import 'package:common_topdbd/model/country/country.dart';
import 'package:common_topdbd/model/country/list_country.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class CountryQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser<T extends Country,Y extends ListCountry<T>> extends BaseGetModelFromNamedServiceParameterNamedDataSource<T,String> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> getCountryFromFirebaseFirestoreServiceParameterStringDS(String parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<T>> getModelFromNamedServiceParameterNamedDS(String parameter)
  async {
    try {
      final documentByCountry = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.country)
          .where(KeysFirebaseFirestoreServiceUtility.countryQUniqueIdByUser,isEqualTo: parameter)
          .limit(1)
          .get();
      if((documentByCountry?.size ?? 0) <= 0) {
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.countryQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUserQWhereLocalExceptionGuiltyUserNoExists));
      }
      return Result<T>.success(Country(
          documentByCountry?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.countryQUniqueIdByUser],
          documentByCountry?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.countryQNameCountry]) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }

}