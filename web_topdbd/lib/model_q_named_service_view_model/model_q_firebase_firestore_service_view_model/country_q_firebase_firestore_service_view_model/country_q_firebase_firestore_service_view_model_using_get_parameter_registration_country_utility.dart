import 'package:common_topdbd/model/country/country.dart';
import 'package:common_topdbd/model/country/list_country.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:common_topdbd/named_utility/registration_country_utility.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/i_get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class CountryQFirebaseFirestoreServiceViewModelUsingGetParameterRegistrationCountryUtility<T extends Country,Y extends ListCountry<T>>
    implements IGetModelFromNamedServiceParameterNamedDataSource<T,RegistrationCountryUtility>
{
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<T> getCountryFromFirebaseFirestoreServiceParameterRegistrationCountryUtilityDS(RegistrationCountryUtility parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceParameterNamedDS(RegistrationCountryUtility parameter)
  async {
    try {
      final documentByIPAddressWhereAdding = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.country)
          .add({
        KeysFirebaseFirestoreServiceUtility.countryQUniqueIdByUser : parameter.uniqueIdByUser,
        KeysFirebaseFirestoreServiceUtility.countryQNameCountry : parameter.nameCountry
      });
      final documentByIPAddress = await documentByIPAddressWhereAdding?.get();
      if(!(documentByIPAddress?.exists ?? false)) {
        return Country.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.countryQFirebaseFirestoreServiceViewModelUsingGetParameterRegistrationCountryUtilityQWhereLocalExceptionGuiltyUserNoExists)) as T;
      }
      return Country.success(
          documentByIPAddress?.data()?[KeysFirebaseFirestoreServiceUtility.countryQUniqueIdByUser],
          documentByIPAddress?.data()?[KeysFirebaseFirestoreServiceUtility.countryQNameCountry]) as T;
    } catch(e) {
      return Country.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }

}