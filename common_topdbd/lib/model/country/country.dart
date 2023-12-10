import 'package:common_topdbd/model/country_rd/country_rd.dart';
import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Country extends BaseModel {
  final String uniqueIdByUser;
  final String nameCountry;

  const Country(this.uniqueIdByUser,this.nameCountry) : super(uniqueIdByUser);

  @override
  Country get getClone => Country(uniqueIdByUser,nameCountry);

  @override
  String toString() {
    return "Country(uniqueIdByUser: $uniqueIdByUser, "
        "nameCountry: $nameCountry)";
  }

  CountryRD get getCountryRDWhereListCountryRDWReadyDataUtilityParameterNameCountry {
    return AlgorithmsUtility.getCountryRDWhereListCountryRDWReadyDataUtilityFromCountryAbbreviation(nameCountry);
  }
}