import 'package:library_architecture_mvvm_modify/base_data_for_named/base_data_for_named.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/enum_data_for_defined_view.dart';

final class DataForDefinedView
    extends BaseDataForNamed
{
  bool? isLoading;
  String? uniqueIdByUser;
  bool? isVerifiedUserByVerifiedUserSP;

  DataForDefinedView(this.isLoading,this.uniqueIdByUser,this.isVerifiedUserByVerifiedUserSP) : super();

  EnumDataForDefinedView get getEnumDataForDefinedView {
    if(isLoading ?? false) {
      return EnumDataForDefinedView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForDefinedView.exception;
    }
    if(uniqueIdByUser?.isEmpty ?? false) {
      return EnumDataForDefinedView.loginView;
    }
    if(isNotVerifiedUserByVerifiedUserSPParameterIsVerifiedUserByVerifiedUserSP() ?? false) {
      return EnumDataForDefinedView.notVerifiedUser;
    }
    return EnumDataForDefinedView.success;
  }

  bool? isNotVerifiedUserByVerifiedUserSPParameterIsVerifiedUserByVerifiedUserSP() {
    return !(isVerifiedUserByVerifiedUserSP ?? false);
  }
}