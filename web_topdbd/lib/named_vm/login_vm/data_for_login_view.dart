import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/login_vm/enum_data_for_login_view.dart';

final class DataForLoginView extends BaseDataForNamed<EnumDataForLoginView> {
  String termsOfUse;
  bool isCheckAgreeTermsOfUse;

  DataForLoginView(super.isLoading,this.termsOfUse,this.isCheckAgreeTermsOfUse) : super();

  @override
  EnumDataForLoginView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForLoginView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForLoginView.exception;
    }
    return EnumDataForLoginView.login;
  }
}