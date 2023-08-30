import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:library_architecture_mvvm_modify/base_data_for_named/base_data_for_named.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/enum_data_for_anti_ddos_system_view.dart';

final class DataForAntiDDosSystemView
    extends BaseDataForNamed
{
  bool? isLoading;
  String? code;
  bool? isSuccessCode;
  String? inputCode;

  DataForAntiDDosSystemView(this.isLoading,this.code,this.isSuccessCode,this.inputCode) : super();

  EnumDataForAntiDDosSystemView get getEnumDataForAntiDDosSystemView {
    if(isLoading ?? false) {
      return EnumDataForAntiDDosSystemView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForAntiDDosSystemView.exception;
    }
    if(isNotSuccessCodeParameterIsSuccessCode() ?? false) {
      return EnumDataForAntiDDosSystemView.form;
    }
    return EnumDataForAntiDDosSystemView.definedView;
  }

  String? get getStringWhereNotEqualsParametersCodeAndInputCode {
    if(code != inputCode) {
      return KeysExceptionUtility.dataForAntiDDosSystemViewQGetStringWhereNotEqualsParametersCodeAndInputCode;
    }
    return "";
  }

  bool? isNotSuccessCodeParameterIsSuccessCode() {
    return !(isSuccessCode ?? false);
  }
}