import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_data_for_app_view.dart';

final class DataForAppView extends BaseDataForNamed<EnumDataForAppView> {
  String otherException;
  bool isThoseWorks;
  String uniqueIdByUser;
  bool isNotVerifiedUserByVerifiedUser;
  bool isHackedBySecurity;

  DataForAppView(super.isLoading,this.otherException,this.isThoseWorks,this.uniqueIdByUser,this.isNotVerifiedUserByVerifiedUser,this.isHackedBySecurity);

  @override
  EnumDataForAppView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForAppView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForAppView.exception;
    }
    if(otherException.isNotEmpty) {
      return EnumDataForAppView.otherException;
    }
    if(isThoseWorks) {
      return EnumDataForAppView.thoseWorks;
    }
    if(uniqueIdByUser.isEmpty) {
      return EnumDataForAppView.login;
    }
    if(isNotVerifiedUserByVerifiedUser) {
      return EnumDataForAppView.isNotVerifiedUser;
    }
    if(isHackedBySecurity) {
      return EnumDataForAppView.isHacked;
    }
    return EnumDataForAppView.main;
  }
}