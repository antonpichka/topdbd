import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_main_view/enum_data_for_main_view.dart';

final class DataForMainView extends BaseDataForNamed<EnumDataForMainView> {
  DataForMainView(super.isLoading);

  @override
  EnumDataForMainView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForMainView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForMainView.exception;
    }
    return EnumDataForMainView.success;
  }
}