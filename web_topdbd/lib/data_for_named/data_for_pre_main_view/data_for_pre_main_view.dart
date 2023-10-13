import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_pre_main_view/enum_data_for_pre_main_view.dart';

final class DataForPreMainView extends BaseDataForNamed {
  String otherException;

  DataForPreMainView(super.isLoading,this.otherException);

  EnumDataForPreMainView get getEnumDataForPreMainView {
    if(isLoading) {
      return EnumDataForPreMainView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForPreMainView.exception;
    }
    if(otherException.isNotEmpty) {
      return EnumDataForPreMainView.otherException;
    }
    return EnumDataForPreMainView.success;
  }
}