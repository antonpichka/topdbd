import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/auth_navigation_vm/enum_data_for_auth_navigation_view.dart';

final class DataForAuthNavigationView extends BaseDataForNamed<EnumDataForAuthNavigationView> {
  final bool isAdminByRoleUser;

  DataForAuthNavigationView(super.isLoading,this.isAdminByRoleUser);

  @override
  EnumDataForAuthNavigationView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForAuthNavigationView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForAuthNavigationView.exception;
    }
    return EnumDataForAuthNavigationView.success;
  }
}