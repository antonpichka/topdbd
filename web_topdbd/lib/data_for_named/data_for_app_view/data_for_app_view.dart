import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_data_for_app_view.dart';

final class DataForAppView extends BaseDataForNamed {
  int iterationInitStreams;
  String otherException;
  String uniqueIdByUser;
  bool isThoseWorks;
  bool isNotValidVersionTOPDBDVersionWeb;
  String versionByTOPDBDVersionWeb;
  bool isNotVerifiedUserByVerifiedUser;
  bool isHackedBySecurity;

  DataForAppView(super.isLoading,this.iterationInitStreams,this.otherException,this.uniqueIdByUser,this.isThoseWorks,this.isNotValidVersionTOPDBDVersionWeb,this.versionByTOPDBDVersionWeb,this.isNotVerifiedUserByVerifiedUser,this.isHackedBySecurity);

  EnumDataForAppView get getEnumDataForAppView {
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForAppView.exception;
    }
    if(otherException.isNotEmpty) {
      return EnumDataForAppView.otherException;
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
    /// WAITING INIT STREAMS
    return EnumDataForAppView.mainView;
  }
}