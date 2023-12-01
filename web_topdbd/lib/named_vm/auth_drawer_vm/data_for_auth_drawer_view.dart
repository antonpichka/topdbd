import 'package:common_topdbd/model/country_rd/country_rd.dart';
import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/auth_drawer_vm/enum_data_for_auth_drawer_view.dart';

final class DataForAuthDrawerView extends BaseDataForNamed<EnumDataForAuthDrawerView> {
  String usernameByDiscordUser;
  String nameCountryByCountry;

  DataForAuthDrawerView(super.isLoading,this.usernameByDiscordUser,this.nameCountryByCountry);

  @override
  EnumDataForAuthDrawerView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForAuthDrawerView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForAuthDrawerView.exception;
    }
    return EnumDataForAuthDrawerView.success;
  }

  String get getStringWhereSubstringParameterUsernameByDiscordUser {
    return usernameByDiscordUser.length >  9 ? "${usernameByDiscordUser.substring(0,9)}..." : usernameByDiscordUser;
  }

  CountryRD get getCountryRDWhereListCountryRDWReadyDataUtilityFromCountryAbbreviationParameterOne {
    return AlgorithmsUtility.getCountryRDWhereListCountryRDWReadyDataUtilityFromCountryAbbreviation(nameCountryByCountry);
  }
}