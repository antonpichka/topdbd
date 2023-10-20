import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/data_for_anti_ddos_system_view.dart';

@immutable
final class AntiDDosSystemViewQViewModel extends BaseNamedViewQViewModel<DataForAntiDDosSystemView,DefaultStreamAndStateQDataForNamed<DataForAntiDDosSystemView>> {
  // OperationQQModelQNamedServiceQNP||ParameterNamed(QQForNamedQQWhereNamed)
  // NamedUtility

  AntiDDosSystemViewQViewModel() : super(DefaultStreamAndStateQDataForNamed(DataForAntiDDosSystemView(true,"",false,"")));

  @override
  Future<String> init() async {
    getDataForNamed.isLoading = false;
    getDataForNamed.code = AlgorithmsUtility.getRandomNumbersFromNumberOfScrollsParameterString(8);
    return KeysSuccessUtility.sUCCESS;
  }

  void setInputCode(String inputCode) {
    getDataForNamed.inputCode = inputCode;
    notifyStreamDataForNamed();
  }

  void clickButtonDone(Function() callbackSuccess,Function(String messageException) callbackException) {
    if(getDataForNamed.isLoading) {
      return;
    }
    getDataForNamed.isLoading = true;
    notifyStreamDataForNamed();
    final getStringWhereNotEqualsParametersCodeAndInputCode = getDataForNamed
        .getStringWhereNotEqualsParametersCodeAndInputCode;
    if(getStringWhereNotEqualsParametersCodeAndInputCode.isNotEmpty) {
      _firstQClickButtonDoneQGetStringWhereNotEqualsParametersCodeAndInputCode(getStringWhereNotEqualsParametersCodeAndInputCode,callbackSuccess,callbackException);
      return;
    }
    getDataForNamed.isLoading = false;
    getDataForNamed.isSuccessCode = true;
    notifyStreamDataForNamed();
    callbackSuccess();
  }

  void _firstQClickButtonDoneQGetStringWhereNotEqualsParametersCodeAndInputCode(String getStringWhereNotEqualsParametersCodeAndInputCode,Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamed.isLoading = false;
    notifyStreamDataForNamed();
    callbackException(getStringWhereNotEqualsParametersCodeAndInputCode);
  }
}