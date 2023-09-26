import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_pre_verified_user_system_view/enum_data_for_pre_verified_user_system_view.dart';

final class DataForPreVerifiedUserSystemView extends BaseDataForNamed {
  String otherException;

  DataForPreVerifiedUserSystemView(super.isLoading,this.otherException);

  EnumDataForPreVerifiedUserSystemView get getEnumDataForPreVerifiedUserSystemView {
    if(isLoading) {
      return EnumDataForPreVerifiedUserSystemView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForPreVerifiedUserSystemView.exception;
    }
    if(otherException.isNotEmpty) {
      return EnumDataForPreVerifiedUserSystemView.otherException;
    }
    return EnumDataForPreVerifiedUserSystemView.success;
  }
}