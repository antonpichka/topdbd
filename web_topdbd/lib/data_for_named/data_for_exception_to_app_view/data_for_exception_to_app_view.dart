import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_exception_to_app_view/enum_data_for_exception_to_app_view.dart';

final class DataForExceptionToAppView extends BaseDataForNamed<EnumDataForExceptionToAppView> {
  DataForExceptionToAppView(super.isLoading);

  @override
  EnumDataForExceptionToAppView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForExceptionToAppView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForExceptionToAppView.exception;
    }
    return EnumDataForExceptionToAppView.success;
  }
}