import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/enum_data_for_login_view.dart';

final class DataForLoginView extends BaseDataForNamed {
  String termsOfUse;
  bool isCheckAgreeTermsOfUse;

  DataForLoginView(super.isLoading,this.termsOfUse,this.isCheckAgreeTermsOfUse) : super();

  EnumDataForLoginView get getEnumDataForLoginView {
    if(isLoading) {
      return EnumDataForLoginView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForLoginView.exception;
    }
    return EnumDataForLoginView.login;
  }
}