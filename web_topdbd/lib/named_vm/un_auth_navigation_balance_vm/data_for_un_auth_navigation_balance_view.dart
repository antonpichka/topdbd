import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/un_auth_navigation_balance_vm/enum_data_for_un_auth_navigation_balance_view.dart';

final class DataForUnAuthNavigationBalanceView extends BaseDataForNamed<EnumDataForUnAuthNavigationBalanceView> {
  DataForUnAuthNavigationBalanceView(super.isLoading);

  @override
  EnumDataForUnAuthNavigationBalanceView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForUnAuthNavigationBalanceView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForUnAuthNavigationBalanceView.exception;
    }
    return EnumDataForUnAuthNavigationBalanceView.success;
  }
}