import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/settings_balance_vm/enum_data_for_settings_balance_view.dart';

final class DataForSettingsBalanceView extends BaseDataForNamed<EnumDataForSettingsBalanceView> {
  DataForSettingsBalanceView(super.isLoading);

  @override
  EnumDataForSettingsBalanceView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForSettingsBalanceView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForSettingsBalanceView.exception;
    }
    return EnumDataForSettingsBalanceView.success;
  }
}
