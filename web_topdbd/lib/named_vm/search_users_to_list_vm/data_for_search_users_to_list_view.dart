import 'package:common_topdbd/model/duf_w_country_w_role_user/list_duf_w_country_w_role_user.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/search_users_to_list_vm/enum_data_for_search_users_to_list_view.dart';

final class DataForSearchUsersToListView extends BaseDataForNamed<EnumDataForSearchUsersToListView> {
  String value;
  ListDUFWCountryWRoleUser listDUFWCountryWRoleUser;

  DataForSearchUsersToListView(super.isLoading,this.value,this.listDUFWCountryWRoleUser);

  @override
  EnumDataForSearchUsersToListView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForSearchUsersToListView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForSearchUsersToListView.exception;
    }
    return EnumDataForSearchUsersToListView.success;
  }
}