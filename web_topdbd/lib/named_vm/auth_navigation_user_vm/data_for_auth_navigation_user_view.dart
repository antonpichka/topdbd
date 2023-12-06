import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/auth_navigation_user_vm/enum_data_for_auth_navigation_user_view.dart';

final class DataForAuthNavigationUserView extends BaseDataForNamed<EnumDataForAuthNavigationUserView> {
  String usernameByDiscordUser;
  bool isAuthMyUser;

  DataForAuthNavigationUserView(super.isLoading,this.usernameByDiscordUser,this.isAuthMyUser);

  @override
  EnumDataForAuthNavigationUserView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForAuthNavigationUserView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForAuthNavigationUserView.exception;
    }
    return EnumDataForAuthNavigationUserView.success;
  }
}