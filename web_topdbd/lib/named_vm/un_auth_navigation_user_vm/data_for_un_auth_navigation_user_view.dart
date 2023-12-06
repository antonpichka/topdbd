import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/un_auth_navigation_user_vm/enum_data_for_un_auth_navigation_user_view.dart';

final class DataForUnAuthNavigationUserView extends BaseDataForNamed<EnumDataForUnAuthNavigationUserView> {
  String usernameByDiscordUser;

  DataForUnAuthNavigationUserView(super.isLoading,this.usernameByDiscordUser);

  @override
  EnumDataForUnAuthNavigationUserView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForUnAuthNavigationUserView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForUnAuthNavigationUserView.exception;
    }
    return EnumDataForUnAuthNavigationUserView.success;
  }
}