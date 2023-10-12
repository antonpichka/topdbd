import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_data_for_app_view.dart';

final class DataForAppView extends BaseDataForNamed {
  String uniqueIdByUser;
  bool isPreSuccess;

  DataForAppView(super.isLoading,this.uniqueIdByUser,this.isPreSuccess);

  EnumDataForAppView get getEnumDataForAppView {
    if(isLoading) {
      return EnumDataForAppView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForAppView.exception;
    }
    if(uniqueIdByUser.isEmpty) {
      return EnumDataForAppView.login;
    }
    return EnumDataForAppView.success;
  }
}