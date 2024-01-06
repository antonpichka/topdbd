import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/auth_main_vm/enum_data_for_auth_main_view.dart';

final class DataForAuthMainView extends BaseDataForNamed<EnumDataForAuthMainView> {
  DataForAuthMainView(super.isLoading);

  @override
  EnumDataForAuthMainView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForAuthMainView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForAuthMainView.exception;
    }
    return EnumDataForAuthMainView.success;
  }
}