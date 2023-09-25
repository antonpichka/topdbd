import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_verified_user_system_view/enum_data_for_verified_user_system_view.dart';

final class DataForVerifiedUserSystemView extends BaseDataForNamed {
  bool isVerifiedUserByVerifiedUser;

  DataForVerifiedUserSystemView(super.isLoading,this.isVerifiedUserByVerifiedUser);

  EnumDataForVerifiedUserSystemView get getEnumDataForVerifiedUserSystemView {
    if(isLoading) {
      return EnumDataForVerifiedUserSystemView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForVerifiedUserSystemView.exception;
    }
    if(isNotParameterIsVerifiedUserByVerifiedUser()) {
      return EnumDataForVerifiedUserSystemView.isNotVerifiedUserByVerifiedUser;
    }
    return EnumDataForVerifiedUserSystemView.success;
  }

  bool isNotParameterIsVerifiedUserByVerifiedUser() {
    return !isVerifiedUserByVerifiedUser;
  }
}