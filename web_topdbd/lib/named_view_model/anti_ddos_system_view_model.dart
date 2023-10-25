import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/data_for_anti_ddos_system_view.dart';

@immutable
final class AntiDDosSystemViewModel extends BaseNamedViewModel<DataForAntiDDosSystemView,DefaultStreamWState<DataForAntiDDosSystemView>> {
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  AntiDDosSystemViewModel() : super(DefaultStreamWState(DataForAntiDDosSystemView(true,"",false,"")));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.code = AlgorithmsUtility.getRandomNumbersFromNumberOfScrollsParameterString(8);
    return KeysSuccessUtility.sUCCESS;
  }

  void setInputCode(String inputCode) {
    getDataForNamedParameterNamedStreamWState.inputCode = inputCode;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void clickButtonDone(Function() callbackSuccess,Function(String) callbackException) {
    if(getDataForNamedParameterNamedStreamWState.isLoading) {
      return;
    }
    getDataForNamedParameterNamedStreamWState.isLoading = true;
    notifyStreamDataForNamedParameterNamedStreamWState();
    final getExceptionInStringWhereNotEqualsParametersCodeAndInputCode = getDataForNamedParameterNamedStreamWState
        .getExceptionInStringWhereNotEqualsParametersCodeAndInputCode;
    if(getExceptionInStringWhereNotEqualsParametersCodeAndInputCode.isNotEmpty) {
      _firstQQClickButtonDoneQQGetExceptionInStringWhereNotEqualsParametersCodeAndInputCode(getExceptionInStringWhereNotEqualsParametersCodeAndInputCode,callbackException);
      return;
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.isSuccessCode = true;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackSuccess();
  }

  void _firstQQClickButtonDoneQQGetExceptionInStringWhereNotEqualsParametersCodeAndInputCode(String getExceptionInStringWhereNotEqualsParametersCodeAndInputCode,Function(String) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(getExceptionInStringWhereNotEqualsParametersCodeAndInputCode);
  }
}