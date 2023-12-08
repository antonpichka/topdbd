import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/search_users_vm/enum_data_for_search_users_view.dart';

final class DataForSearchUsersView extends BaseDataForNamed<EnumDataForSearchUsersView> {
  bool isNotSpamButton;
  String value;

  DataForSearchUsersView(super.isLoading,this.isNotSpamButton,this.value);

  @override
  EnumDataForSearchUsersView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForSearchUsersView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForSearchUsersView.exception;
    }
    return EnumDataForSearchUsersView.success;
  }
}