import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:library_architecture_mvvm_modify/base_data_for_named/base_data_for_named.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_view/enum_data_for_anti_ddos_view.dart';

final class DataForAntiDDosView
    extends BaseDataForNamed
{
  bool? isLoading;
  String? code;
  bool? isSuccessCodeLetsGoNavigationMainView;
  String? inputCode;

  DataForAntiDDosView(this.isLoading,this.code,this.isSuccessCodeLetsGoNavigationMainView,this.inputCode) : super();

  EnumDataForAntiDDosView get getEnumDataForAntiDDosView {
    if(isLoading ?? false) {
      return EnumDataForAntiDDosView.isLoading;
    }
    if(isNotSuccessCodeLetsGoNavigationMainView() ?? false) {
      return EnumDataForAntiDDosView.form;
    }
    return EnumDataForAntiDDosView.mainView;
  }

  String? get getExceptionInStringWhereNotEqualsParametersCodeAndInputCode {
    if(code != inputCode) {
      return KeysExceptionUtility.dFADDVWhereNotEqualsParametersCodeAndInputCode;
    }
    return "";
  }

  bool? isNotSuccessCodeLetsGoNavigationMainView() {
    return !(isSuccessCodeLetsGoNavigationMainView ?? false);
  }
}