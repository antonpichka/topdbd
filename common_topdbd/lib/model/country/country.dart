import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class Country extends BaseModel {
  final String? uniqueIdByUser;
  final String? nameCountry;

  Country.success(this.uniqueIdByUser,this.nameCountry) : super.success(uniqueIdByUser);
  Country.exception(super.exception) :
        uniqueIdByUser = null,
        nameCountry = null,
        super.exception();

  @override
  Country get getCloneModel => Country.success(uniqueIdByUser,nameCountry);
}