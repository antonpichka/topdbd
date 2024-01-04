import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_vm/enum_data_for_settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_view.dart';

final class DataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView extends BaseDataForNamed<EnumDataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView> {
  String nameByManiacWMatchBalance;
  int necessaryLengthPickedManiacPerkByManiacWMatchBalance;

  DataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView(super.isLoading,this.nameByManiacWMatchBalance,this.necessaryLengthPickedManiacPerkByManiacWMatchBalance);

  @override
  EnumDataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView.exception;
    }
    return EnumDataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView.success;
  }
}