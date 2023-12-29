import 'package:common_topdbd/model/country_rd/country_rd.dart';
import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/auth_title_w_app_bar_vm/enum_data_for_auth_title_w_app_bar_view.dart';

final class DataForAuthTitleWAppBarView extends BaseDataForNamed<EnumDataForAuthTitleWAppBarView> {
  String usernameByDiscordUser;
  String nameCountryByCountry;

  DataForAuthTitleWAppBarView(super.isLoading,this.usernameByDiscordUser,this.nameCountryByCountry);

  @override
  EnumDataForAuthTitleWAppBarView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForAuthTitleWAppBarView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForAuthTitleWAppBarView.exception;
    }
    return EnumDataForAuthTitleWAppBarView.success;
  }

  String getStringWhereSubstringFromEndParameterUsernameByDiscordUser(int end) {
    return AlgorithmsUtility.getStringWhereSubstringFromNameAndEnd(usernameByDiscordUser,end);
  }

  CountryRD get getCountryRDWhereListCountryRDWReadyDataUtilityParameterOne {
    return AlgorithmsUtility.getCountryRDWhereListCountryRDWReadyDataUtilityFromCountryAbbreviation(nameCountryByCountry);
  }
}