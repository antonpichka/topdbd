import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/settings_save_changes_to_match_balance_vm/enum_data_for_settings_save_changes_to_match_balance_view.dart';

final class DataForSettingsSaveChangesToMatchBalanceView extends BaseDataForNamed<EnumDataForSettingsSaveChangesToMatchBalanceView> {
  MatchBalance matchBalance;
  MatchBalance matchBalanceWItsLikeMutable;
  String exceptionInString;

  DataForSettingsSaveChangesToMatchBalanceView(super.isLoading,this.matchBalance,this.matchBalanceWItsLikeMutable,this.exceptionInString);

  @override
  EnumDataForSettingsSaveChangesToMatchBalanceView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForSettingsSaveChangesToMatchBalanceView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForSettingsSaveChangesToMatchBalanceView.exception;
    }
    if(matchBalance.toString() == matchBalanceWItsLikeMutable.toString()) {
      return EnumDataForSettingsSaveChangesToMatchBalanceView.disable;
    }
    return EnumDataForSettingsSaveChangesToMatchBalanceView.success;
  }

  void setFromNumberOfRoundsByMatchBalanceParameterMatchBalanceWItsLikeMutable(int numberOfRoundsByMatchBalance) {
    matchBalanceWItsLikeMutable = matchBalanceWItsLikeMutable.getMatchBalanceFromNewNumberOfRoundsParametersTwo(numberOfRoundsByMatchBalance);
  }

  void setMatchBalanceParametersMatchBalanceAndMatchBalanceWItsLikeMutable() {
    matchBalance = matchBalanceWItsLikeMutable.getClone;
  }
}