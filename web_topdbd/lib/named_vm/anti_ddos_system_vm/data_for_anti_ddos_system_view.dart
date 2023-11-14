import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/anti_ddos_system_vm/enum_data_for_anti_ddos_system_view.dart';

final class DataForAntiDDosSystemView extends BaseDataForNamed<EnumDataForAntiDDosSystemView> {
  String code;
  bool isSuccessCode;
  String inputCode;

  DataForAntiDDosSystemView(super.isLoading,this.code,this.isSuccessCode,this.inputCode) : super();

  @override
  EnumDataForAntiDDosSystemView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForAntiDDosSystemView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForAntiDDosSystemView.exception;
    }
    if(isWhereNotSuccessCodeParameterIsSuccessCode()) {
      return EnumDataForAntiDDosSystemView.form;
    }
    return EnumDataForAntiDDosSystemView.success;
  }

  String get getExceptionInStringWhereNotEqualsParametersCodeAndInputCode {
    if(code != inputCode) {
      return KeysExceptionUtility.dataForAntiDDosSystemViewQQGetExceptionInStringWhereNotEqualsParametersCodeAndInputCode;
    }
    return "";
  }

  bool isWhereNotSuccessCodeParameterIsSuccessCode() {
    return !isSuccessCode;
  }
}