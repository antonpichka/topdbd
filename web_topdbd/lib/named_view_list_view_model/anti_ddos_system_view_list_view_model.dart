import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/data_for_anti_ddos_system_view.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/initialized_named_stream_state_q_data_for_anti_ddos_system_view/initialized_default_stream_state_q_data_for_anti_ddos_system_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_anti_ddos_system_view_q_there_is_stream_state_view_model.dart';

@immutable
final class AntiDDosSystemViewListViewModel extends BaseNamedViewListViewModel<DataForAntiDDosSystemView> {
  // ModelQNamedServiceViewModel

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForAntiDDosSystemViewQThereIsStreamStateViewModel =
  DataForAntiDDosSystemViewQThereIsStreamStateViewModel(InitializedDefaultStreamStateQDataForAntiDDosSystemView());

  // NamedUtility

  @override
  void dispose() {
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel.dispose();
  }

  @override
  Stream<DataForAntiDDosSystemView> get getStreamDataForNamed => _dataForAntiDDosSystemViewQThereIsStreamStateViewModel.getStreamDataForNamed;
  @override
  DataForAntiDDosSystemView get getDataForNamed => _dataForAntiDDosSystemViewQThereIsStreamStateViewModel.getDataForNamed;

  @override
  Future<String> init() async {
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForNamed
        .isLoading = false;
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForNamed
        .code = AlgorithmsUtility.getRandomNumbersFromNumberOfScrollsParameterString(8);
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void notifyStreamDataForNamed() {
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForNamed();
  }

  void setInputCode(String inputCode) {
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForNamed
        .inputCode = inputCode;
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForNamed();
  }

  void clickButtonDone(Function() callbackSuccess,Function(String messageException) callbackException) {
    if(_dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForNamed
        .isLoading)
    {
      return;
    }
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForNamed
        .isLoading = true;
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForNamed();
    final getStringWhereNotEqualsParametersCodeAndInputCode = _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForNamed
        .getStringWhereNotEqualsParametersCodeAndInputCode;
    if(getStringWhereNotEqualsParametersCodeAndInputCode.isNotEmpty) {
      _firstQClickButtonDoneQGetStringWhereNotEqualsParametersCodeAndInputCode(getStringWhereNotEqualsParametersCodeAndInputCode,callbackSuccess,callbackException);
      return;
    }
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForNamed
        .isLoading = false;
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForNamed
        .isSuccessCode = true;
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForNamed();
    callbackSuccess();
  }

  void _firstQClickButtonDoneQGetStringWhereNotEqualsParametersCodeAndInputCode(String getStringWhereNotEqualsParametersCodeAndInputCode,Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForNamed
        .isLoading = false;
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForNamed();
    callbackException(getStringWhereNotEqualsParametersCodeAndInputCode);
  }
}