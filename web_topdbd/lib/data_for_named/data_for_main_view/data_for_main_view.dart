import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_main_view/enum_data_for_main_view.dart';

final class DataForMainView extends BaseDataForNamed {
  bool isNotVerifiedUserByVerifiedUser;
  bool isHack;

  DataForMainView(super.isLoading,this.isNotVerifiedUserByVerifiedUser,this.isHack);

  EnumDataForMainView get getEnumDataForMainView {
    if(isLoading) {
      return EnumDataForMainView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForMainView.exception;
    }
    if(isNotVerifiedUserByVerifiedUser) {
      return EnumDataForMainView.isNotVerifiedUserByVerifiedUser;
    }
    if(isHack) {
      return EnumDataForMainView.isHack;
    }
    return EnumDataForMainView.success;
  }
}