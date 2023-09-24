import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_initialize_service_system_view/enum_data_for_initialize_service_system_view.dart';

final class DataForInitializeServiceSystemView extends BaseDataForNamed {
  DataForInitializeServiceSystemView(super.isLoading);

  EnumDataForInitializeServiceSystemView get getEnumDataForInitializeServiceSystemView {
    if(isLoading) {
      return EnumDataForInitializeServiceSystemView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForInitializeServiceSystemView.exception;
    }
    return EnumDataForInitializeServiceSystemView.success;
  }
}