import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_view/data_for_anti_ddos_view.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_view/initialized_stream_state_data_for_anti_ddos_view/initialized_stream_state_data_for_anti_ddos_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_anti_ddos_view_q_there_is_stream_state_view_model/data_for_anti_ddos_view_q_there_is_stream_state_view_model.dart';

final class AntiDDosViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForAntiDDosViewQThereIsStreamStateViewModel =
  DataForAntiDDosViewQThereIsStreamStateViewModel(InitializedStreamStateDataForAntiDDosView());

  // NamedUtility

  @override
  void dispose() {
    _dataForAntiDDosViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForAntiDDosView?>? get getStreamDataForAntiDDosView => _dataForAntiDDosViewQThereIsStreamStateViewModel.getStreamDataForAntiDDosView;
  DataForAntiDDosView? get getDataForAntiDDosView => _dataForAntiDDosViewQThereIsStreamStateViewModel.getDataForAntiDDosView;

  String? initForAntiDDosView() {
    _dataForAntiDDosViewQThereIsStreamStateViewModel
        .getDataForAntiDDosView
        ?.code = AlgorithmsUtility.getRandomNumbersFromNumberOfScrollsParameterString(8);
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForAntiDDosView() {
    _dataForAntiDDosViewQThereIsStreamStateViewModel
        .notifyStreamDataForAntiDDosView();
  }

  void setInputCodeForAntiDDosView(String inputCode) {
    _dataForAntiDDosViewQThereIsStreamStateViewModel
        .getDataForAntiDDosView
        ?.inputCode = inputCode;
    _dataForAntiDDosViewQThereIsStreamStateViewModel
        .notifyStreamDataForAntiDDosView();
  }

  void clickButtonDoneForAntiDDosView(Function(String? messageException) callbackException) {
    if(_dataForAntiDDosViewQThereIsStreamStateViewModel
        .getDataForAntiDDosView
        ?.isLoading ?? false)
    {
      return;
    }
    _dataForAntiDDosViewQThereIsStreamStateViewModel
        .getDataForAntiDDosView
        ?.isLoading = true;
    _dataForAntiDDosViewQThereIsStreamStateViewModel
        .notifyStreamDataForAntiDDosView();
    final getExceptionInStringWhereNotEqualsParametersCodeAndInputCode = _dataForAntiDDosViewQThereIsStreamStateViewModel
        .getDataForAntiDDosView
        ?.getExceptionInStringWhereNotEqualsParametersCodeAndInputCode;
    if(getExceptionInStringWhereNotEqualsParametersCodeAndInputCode?.isNotEmpty ?? false) {
      _exceptionFirstBranchOneToClickButtonDoneForAntiDDosViewForGetExceptionInStringWhereNotEqualsParametersCodeAndInputCode(getExceptionInStringWhereNotEqualsParametersCodeAndInputCode,callbackException);
      return;
    }
    _dataForAntiDDosViewQThereIsStreamStateViewModel
        .getDataForAntiDDosView
        ?.isLoading = false;
    _dataForAntiDDosViewQThereIsStreamStateViewModel
        .getDataForAntiDDosView
        ?.isSuccessCodeLetsGoNavigationMainView = true;
    _dataForAntiDDosViewQThereIsStreamStateViewModel
        .notifyStreamDataForAntiDDosView();
  }

  void _exceptionFirstBranchOneToClickButtonDoneForAntiDDosViewForGetExceptionInStringWhereNotEqualsParametersCodeAndInputCode(String? getExceptionInStringWhereNotEqualsParametersCodeAndInputCode, Function(String? messageException) callbackException) {
    _dataForAntiDDosViewQThereIsStreamStateViewModel
        .getDataForAntiDDosView
        ?.isLoading = false;
    _dataForAntiDDosViewQThereIsStreamStateViewModel
        .notifyStreamDataForAntiDDosView();
    callbackException(getExceptionInStringWhereNotEqualsParametersCodeAndInputCode);
  }
}