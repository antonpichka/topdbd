import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_data_for_app_view.dart';

final class DataForAppView extends BaseDataForNamed {
  String uniqueIdByUser;
  bool isThoseWorks;
  bool isPreMainView;
  bool isNotValidVersionTOPDBDVersionWeb;
  String versionByTOPDBDVersionWeb;
  bool isNotVerifiedUserByVerifiedUser;
  bool isHackedBySecurity;

  DataForAppView(super.isLoading,this.uniqueIdByUser,this.isThoseWorks,this.isPreMainView,this.isNotValidVersionTOPDBDVersionWeb,this.versionByTOPDBDVersionWeb,this.isNotVerifiedUserByVerifiedUser,this.isHackedBySecurity);

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
    if(isNotVerifiedUserByVerifiedUser) {
      return EnumDataForAppView.isNotVerifiedUser;
    }
    if(isHackedBySecurity) {
      return EnumDataForAppView.isHacked;
    }
    if(isPreMainView) {
      return EnumDataForAppView.preMainView;
    }
    return EnumDataForAppView.mainView;
  }
}