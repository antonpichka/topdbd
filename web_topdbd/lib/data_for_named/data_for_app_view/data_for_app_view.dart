import 'package:common_topdbd/model/user/user.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_data_for_app_view.dart';

final class DataForAppView extends BaseDataForNamed {
  User user;
  bool isPreSuccess;

  DataForAppView(super.isLoading,this.user,this.isPreSuccess);

  EnumDataForAppView get getEnumDataForAppView {
    if(isLoading) {
      return EnumDataForAppView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForAppView.exception;
    }
    if(user.uniqueId.isEmpty) {
      return EnumDataForAppView.login;
    }
    if(isPreSuccess) {
      return EnumDataForAppView.preSuccess;
    }
    return EnumDataForAppView.success;
  }
}