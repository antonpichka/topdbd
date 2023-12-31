import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/settings_number_of_rounds_to_match_balance_vm/enum_data_for_settings_number_of_rounds_to_match_balance_view.dart';

final class DataForSettingsNumberOfRoundsToMatchBalanceView extends BaseDataForNamed<EnumDataForSettingsNumberOfRoundsToMatchBalanceView> {
  int numberOfRoundsByMatchBalance;

  DataForSettingsNumberOfRoundsToMatchBalanceView(super.isLoading,this.numberOfRoundsByMatchBalance);

  @override
  EnumDataForSettingsNumberOfRoundsToMatchBalanceView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForSettingsNumberOfRoundsToMatchBalanceView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForSettingsNumberOfRoundsToMatchBalanceView.exception;
    }
    return EnumDataForSettingsNumberOfRoundsToMatchBalanceView.success;
  }
}