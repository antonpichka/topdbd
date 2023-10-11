import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/data_for_defined_view.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/initialized_named_stream_state_q_data_for_defined_view/initialized_default_stream_state_q_data_for_defined_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_defined_view_q_there_is_stream_state_view_model/data_for_defined_view_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_custom_start_listening_and_cancel_listening_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_get_np_for_unique_id_by_user.dart';

@immutable
final class DefinedViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQNamedServiceViewModel
  final _stringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser =
  StringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser();
  final _stringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser =
  StringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser();

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForDefinedViewQThereIsStreamStateViewModel =
  DataForDefinedViewQThereIsStreamStateViewModel(InitializedDefaultStreamStateQDataForDefinedView());

  // NamedUtility

  @override
  void dispose() {
    _stringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser.cancelListening();
    _dataForDefinedViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForDefinedView?> get getStreamDataForDefinedView => _dataForDefinedViewQThereIsStreamStateViewModel.getStreamDataForDefinedView;
  DataForDefinedView? get getDataForDefinedView => _dataForDefinedViewQThereIsStreamStateViewModel.getDataForDefinedView;

  void listeningStreamsTempCacheServiceForDefinedView() {
    _stringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser
        .startListening((Result<Strings> resultStringsForUniqueIdByUser) {
          _dataForDefinedViewQThereIsStreamStateViewModel
              .getDataForDefinedView
              ?.uniqueIdByUser = resultStringsForUniqueIdByUser.parameter?.field ?? "";
          _dataForDefinedViewQThereIsStreamStateViewModel
              .notifyStreamDataForDefinedView();
        });
  }

  Future<String> initForDefinedView()
  async {
    final resultStringsForUniqueIdByUser = await _stringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser
        .getStringsFromTempCacheServiceNPDS();
    if(resultStringsForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForDefinedViewQGetStringsFromTempCacheServiceNPDS(resultStringsForUniqueIdByUser);
    }
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.isLoading = false;
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.uniqueIdByUser = resultStringsForUniqueIdByUser.parameter?.uniqueId ?? "";
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.isPreSuccess = true;
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForDefinedView() {
    _dataForDefinedViewQThereIsStreamStateViewModel
        .notifyStreamDataForDefinedView();
  }

  Future<String> _firstBranchOneQInitForDefinedViewQGetStringsFromTempCacheServiceNPDS(Result<Strings> resultStringsForUniqueIdByUser)
  async {
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.isLoading = false;
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.exceptionController = resultStringsForUniqueIdByUser.exceptionController;
    return resultStringsForUniqueIdByUser.exceptionController.getKeyParameterException;
  }
}