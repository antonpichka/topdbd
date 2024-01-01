import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/settings_item_maniac_w_match_balance_vm/enum_data_for_settings_item_maniac_w_match_balance_view.dart';

final class DataForSettingsItemManiacWMatchBalanceView extends BaseDataForNamed<EnumDataForSettingsItemManiacWMatchBalanceView> {
  ManiacWMatchBalance selectedItemManiacWMatchBalance;

  DataForSettingsItemManiacWMatchBalanceView(super.isLoading, this.selectedItemManiacWMatchBalance);

  @override
  EnumDataForSettingsItemManiacWMatchBalanceView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForSettingsItemManiacWMatchBalanceView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForSettingsItemManiacWMatchBalanceView.exception;
    }
    if(selectedItemManiacWMatchBalance.name.isEmpty) {
      return EnumDataForSettingsItemManiacWMatchBalanceView.noSelectedItemManiacWMatchBalanceView;
    }
    return EnumDataForSettingsItemManiacWMatchBalanceView.success;
  }
}
