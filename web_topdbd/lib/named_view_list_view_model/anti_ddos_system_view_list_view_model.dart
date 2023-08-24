import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/data_for_anti_ddos_system_view.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/initialized_stream_state_data_for_anti_ddos_system_view/initialized_stream_state_data_for_anti_ddos_system_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_anti_ddos_system_view_q_there_is_stream_state_view_model/data_for_anti_ddos_system_view_q_there_is_stream_state_view_model.dart';

final class AntiDDosSystemViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForAntiDDosSystemViewQThereIsStreamStateViewModel =
  DataForAntiDDosSystemViewQThereIsStreamStateViewModel(InitializedStreamStateDataForAntiDDosSystemView());

  // NamedUtility

  @override
  void dispose() {
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForAntiDDosSystemView?>? get getStreamDataForAntiDDosSystemView => _dataForAntiDDosSystemViewQThereIsStreamStateViewModel.getStreamDataForAntiDDosSystemView;
  DataForAntiDDosSystemView? get getDataForAntiDDosSystemView => _dataForAntiDDosSystemViewQThereIsStreamStateViewModel.getDataForAntiDDosSystemView;

  String? initForAntiDDosSystemView() {
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

  void clickButtonDoneForAntiDDosSystemView(Function(String? messageException) callbackException) {
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
    final getExceptionInStringWhereNotEqualsParametersCodeAndInputCode = _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForAntiDDosSystemView
        ?.getExceptionInStringWhereNotEqualsParametersCodeAndInputCode;
    if(getExceptionInStringWhereNotEqualsParametersCodeAndInputCode?.isNotEmpty ?? false) {
      _exceptionFirstBranchOneToClickButtonDoneForAntiDDosSystemViewForGetExceptionInStringWhereNotEqualsParametersCodeAndInputCode(getExceptionInStringWhereNotEqualsParametersCodeAndInputCode,callbackException);
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
  }

  void _exceptionFirstBranchOneToClickButtonDoneForAntiDDosSystemViewForGetExceptionInStringWhereNotEqualsParametersCodeAndInputCode(String? getExceptionInStringWhereNotEqualsParametersCodeAndInputCode, Function(String? messageException) callbackException) {
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .getDataForAntiDDosSystemView
        ?.isLoading = false;
    _dataForAntiDDosSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForAntiDDosSystemView();
    callbackException(getExceptionInStringWhereNotEqualsParametersCodeAndInputCode);
  }
}