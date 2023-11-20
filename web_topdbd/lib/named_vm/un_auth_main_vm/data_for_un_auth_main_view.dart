import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/un_auth_main_vm/enum_data_for_un_auth_main_view.dart';

final class DataForUnAuthMainView extends BaseDataForNamed<EnumDataForUnAuthMainView> {
  DataForUnAuthMainView(super.isLoading);

  @override
  EnumDataForUnAuthMainView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForUnAuthMainView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForUnAuthMainView.exception;
    }
    return EnumDataForUnAuthMainView.success;
  }
}