import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_data_for_app_view.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';

final class DataForAppView extends BaseDataForNamed {
  String uniqueIdByUser;
  bool isThoseWorks;
  bool isPreMainView;
  bool isNotValidVersionTOPDBDVersionWeb;
  String versionByTOPDBDVersionWeb;

  DataForAppView(super.isLoading,this.uniqueIdByUser,this.isThoseWorks,this.isPreMainView,this.isNotValidVersionTOPDBDVersionWeb,this.versionByTOPDBDVersionWeb);

  EnumDataForAppView get getEnumDataForAppView {
    if(isLoading) {
      return EnumDataForAppView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForAppView.exception;
    }
    if(isThoseWorks) {
      return EnumDataForAppView.thoseWorks;
    }
    if(isNotValidVersionTOPDBDVersionWeb) {
      return EnumDataForAppView.isNotValidVersionTOPDBDVersionWeb;
    }
    if(uniqueIdByUser.isEmpty) {
      return EnumDataForAppView.loginView;
    }
    if(isPreMainView) {
      return EnumDataForAppView.preMainView;
    }
    return EnumDataForAppView.mainView;
  }
}