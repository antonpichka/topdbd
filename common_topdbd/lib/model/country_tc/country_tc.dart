import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class CountryTC extends BaseModel {
  final String countryAbbreviation;
  final String nameCountry;
  final String pathToTheIcon;

  const CountryTC(this.countryAbbreviation,this.nameCountry,this.pathToTheIcon) : super(countryAbbreviation);

  @override
  CountryTC get getCloneModel => CountryTC(countryAbbreviation, nameCountry, pathToTheIcon);
}