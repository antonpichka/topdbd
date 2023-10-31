import 'package:common_topdbd/model/country/country.dart';
import 'package:common_topdbd/model/country/list_country.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:common_topdbd/named_utility/registration_country_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class InsertEECountryEEFromRegistrationCountryUtilityEEParameterFirebaseFirestoreService<T extends Country,Y extends ListCountry<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> insertCountryFromRegistrationCountryUtilityParameterFirebaseFirestoreService(RegistrationCountryUtility registrationCountryUtility)
  async {
    try {
      final documentByCountryWhereAdding = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.country)
          .add({
        KeysFirebaseFirestoreServiceUtility.countryQQUniqueIdByUser : registrationCountryUtility.uniqueIdByUser,
        KeysFirebaseFirestoreServiceUtility.countryQQNameCountry : registrationCountryUtility.nameCountry
      });
      final documentByCountry = await documentByCountryWhereAdding?.get();
      if(!(documentByCountry?.exists ?? false)) {
        return Result.exception(LocalException(this,EnumGuilty.user,KeysExceptionUtility.insertEECountryEEFromRegistrationCountryUtilityEEParameterFirebaseFirestoreService));
      }
      return Result.success(Country(
          documentByCountry?.data()?[KeysFirebaseFirestoreServiceUtility.countryQQUniqueIdByUser],
          documentByCountry?.data()?[KeysFirebaseFirestoreServiceUtility.countryQQNameCountry]) as T);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}