import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/data_for_anti_ddos_system_view.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/initialized_named_stream_state_q_data_for_anti_ddos_system_view/initialized_default_stream_state_q_data_for_anti_ddos_system_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_anti_ddos_system_view_q_there_is_stream_state_view_model/data_for_anti_ddos_system_view_q_there_is_stream_state_view_model.dart';

final class AntiDDosSystemViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQNamedServiceViewModel

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForAntiDDosSystemViewQThereIsStreamStateViewModel =
  DataForAntiDDosSystemViewQThereIsStreamStateViewModel(InitializedDefaultStreamStateQDataForAntiDDosSystemView());

  // NamedUtility

  @override
  void dispose() {
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForAntiDDosSystemView?> get getStreamDataForAntiDDosSystemView => _dataForAntiDDosSystemViewQThereIsStreamStateViewModel.getStreamDataForAntiDDosSystemView;
  DataForAntiDDosSystemView? get getDataForAntiDDosSystemView => _dataForAntiDDosSystemViewQThereIsStreamStateViewModel.getDataForAntiDDosSystemView;

  String initForAntiDDosSystemView() {
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForAntiDDosSystemView
        ?.isLoading = false;
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForAntiDDosSystemView
        ?.code = AlgorithmsUtility.getRandomNumbersFromNumberOfScrollsParameterString(8);
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForAntiDDosSystemView() {
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForAntiDDosSystemView();
  }

  void setInputCodeForAntiDDosSystemView(String inputCode) {
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForAntiDDosSystemView
        ?.inputCode = inputCode;
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForAntiDDosSystemView();
  }

  void clickButtonDoneForAntiDDosSystemView(Function() callbackSuccess,Function(String messageException) callbackException) {
    if(_dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForAntiDDosSystemView
        ?.isLoading ?? false)
    {
      return;
    }
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForAntiDDosSystemView
        ?.isLoading = true;
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForAntiDDosSystemView();
    final getStringWhereNotEqualsParametersCodeAndInputCode = _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForAntiDDosSystemView
        ?.getStringWhereNotEqualsParametersCodeAndInputCode ?? "";
    if(getStringWhereNotEqualsParametersCodeAndInputCode.isNotEmpty) {
      _firstBranchOneQClickButtonDoneForAntiDDosSystemViewQGetStringWhereNotEqualsParametersCodeAndInputCode(getStringWhereNotEqualsParametersCodeAndInputCode,callbackSuccess,callbackException);
      return;
    }
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForAntiDDosSystemView
        ?.isLoading = false;
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForAntiDDosSystemView
        ?.isSuccessCode = true;
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForAntiDDosSystemView();
    callbackSuccess();
  }

  void _firstBranchOneQClickButtonDoneForAntiDDosSystemViewQGetStringWhereNotEqualsParametersCodeAndInputCode(String getStringWhereNotEqualsParametersCodeAndInputCode,Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForAntiDDosSystemView
        ?.isLoading = false;
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForAntiDDosSystemView();
    callbackException(getStringWhereNotEqualsParametersCodeAndInputCode);
  }
}