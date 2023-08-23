import 'package:library_architecture_mvvm_modify/base_data_for_named/base_data_for_named.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/enum_data_for_login_view.dart';

final class DataForLoginView
    extends BaseDataForNamed
{
  bool? isLoading;

  DataForLoginView(this.isLoading) : super();

  EnumDataForLoginView get getEnumDataForLoginView {
    if(isLoading ?? false) {
      return EnumDataForLoginView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForLoginView.exception;
    }
    return EnumDataForLoginView.login;
  }
}