import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/enum_data_for_defined_view.dart';

final class DataForDefinedView extends BaseDataForNamed {
  String uniqueIdByUser;
  bool isVerifiedUserByVerifiedUserSP;

  DataForDefinedView(super.isLoading,this.uniqueIdByUser,this.isVerifiedUserByVerifiedUserSP) : super();

  EnumDataForDefinedView get getEnumDataForDefinedView {
    if(isLoading) {
      return EnumDataForDefinedView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForDefinedView.exception;
    }
    if(uniqueIdByUser.isEmpty) {
      return EnumDataForDefinedView.loginView;
    }
    if(isNotVerifiedUserByVerifiedUserSPParameterIsVerifiedUserByVerifiedUserSP()) {
      return EnumDataForDefinedView.notVerifiedUser;
    }
    return EnumDataForDefinedView.success;
  }

  bool isNotVerifiedUserByVerifiedUserSPParameterIsVerifiedUserByVerifiedUserSP() {
    return !isVerifiedUserByVerifiedUserSP;
  }
}