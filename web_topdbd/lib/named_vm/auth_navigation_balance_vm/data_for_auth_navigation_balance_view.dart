import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/auth_navigation_balance_vm/enum_data_for_auth_navigation_balance_view.dart';

final class DataForAuthNavigationBalanceView extends BaseDataForNamed<EnumDataForAuthNavigationBalanceView> {
  bool isAdminByRoleUser;

  DataForAuthNavigationBalanceView(super.isLoading,this.isAdminByRoleUser);

  @override
  EnumDataForAuthNavigationBalanceView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForAuthNavigationBalanceView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForAuthNavigationBalanceView.exception;
    }
    return EnumDataForAuthNavigationBalanceView.success;
  }
}