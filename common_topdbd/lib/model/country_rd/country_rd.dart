import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class CountryRD extends BaseModel {
  final String countryAbbreviation;
  final String nameCountry;
  final String pathToTheIcon;

  const CountryRD(this.countryAbbreviation,this.nameCountry,this.pathToTheIcon) : super(countryAbbreviation);

  @override
  CountryRD get getClone => CountryRD(countryAbbreviation, nameCountry, pathToTheIcon);

  @override
  String toString() {
    return "CountryTC(countryAbbreviation: $countryAbbreviation, "
        "nameCountry: $nameCountry, "
        "pathToTheIcon: $pathToTheIcon)";
  }
}