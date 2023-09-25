import 'package:common_topdbd/model/topdbd_version_web/topdbd_version_web.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_topdbd_version_web_system_view/data_for_topdbd_version_web_system_view.dart';
import 'package:web_topdbd/data_for_named/data_for_topdbd_version_web_system_view/initialized_named_stream_state_q_data_for_topdbd_version_web_system_view/initialized_default_stream_state_q_data_for_topdbd_version_web_system_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_topdbd_version_web_system_view_q_there_is_stream_state_view_model/data_for_topdbd_version_web_system_view_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/topdbd_version_web_q_firebase_firestore_service_view_model/topdbd_version_web_q_firebase_firestore_service_view_model_using_custom_start_listening_and_cancel_listening.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_get_np_for_version_by_topdbd_version_web.dart';

final class TOPDBDVersionWebSystemViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQNamedServiceViewModel
  final _stringsQTempCacheServiceViewModelUsingGetNPForVersionByTOPDBDVersionWeb =
  StringsQTempCacheServiceViewModelUsingGetNPForVersionByTOPDBDVersionWeb();
  final _tOPDBDVersionWebQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening =
  TOPDBDVersionWebQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening();

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel =
  DataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel(InitializedDefaultStreamStateQDataForTOPDBDVersionWebSystemView());

  @override
  void dispose() {
    _tOPDBDVersionWebQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening.cancelListening();
    _dataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForTOPDBDVersionWebSystemView?> get getStreamDataForTOPDBDVersionWebSystemView => _dataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel.getStreamDataForTOPDBDVersionWebSystemView;
  DataForTOPDBDVersionWebSystemView? get getDataForTOPDBDVersionWebSystemView => _dataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel.getDataForTOPDBDVersionWebSystemView;

  void listeningStreamsFirebaseFirestoreServiceForTOPDBDVersionWebSystemView() {
    _tOPDBDVersionWebQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening
        .startListening((Result<TOPDBDVersionWeb> resultTOPDBDVersionWeb) async {
          if(resultTOPDBDVersionWeb
              .exceptionController
              .isNotEqualsNullParameterException())
          {
            _firstBranchOneQListeningStreamFirebaseFirestoreServiceForTOPDBDVersionWebSystemViewQStartListening(resultTOPDBDVersionWeb);
            return;
          }
          final resultStringsForVersionByTOPDBDVersionWeb = await _stringsQTempCacheServiceViewModelUsingGetNPForVersionByTOPDBDVersionWeb
              .getStringsFromTempCacheServiceNPDS();
          if(resultStringsForVersionByTOPDBDVersionWeb
              .exceptionController
              .isNotEqualsNullParameterException())
          {
            _firstBranchOneQListeningStreamFirebaseFirestoreServiceForTOPDBDVersionWebSystemViewQGetStringsFromTempCacheServiceNPDS(resultStringsForVersionByTOPDBDVersionWeb);
            return;
          }
          final getStringWhereNotEqualsFromVersionParameterVersion = resultTOPDBDVersionWeb
              .parameter
              ?.getStringWhereNotEqualsFromVersionParameterVersion(resultStringsForVersionByTOPDBDVersionWeb.parameter?.field ?? "") ?? "";
          if(getStringWhereNotEqualsFromVersionParameterVersion.isNotEmpty) {
            _firstBranchOneQListeningStreamFirebaseFirestoreServiceForTOPDBDVersionWebSystemViewQGetStringWhereNotEqualsFromVersionParameterVersion(getStringWhereNotEqualsFromVersionParameterVersion,resultTOPDBDVersionWeb);
            return;
          }
          _dataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel
              .getDataForTOPDBDVersionWebSystemView
              ?.isValidVersionTOPDBDVersionWeb = true;
          _dataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel
              .getDataForTOPDBDVersionWebSystemView
              ?.versionByTOPDBDVersionWeb = resultTOPDBDVersionWeb.parameter?.version ?? "";
          _dataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel
              .notifyStreamDataForTOPDBDVersionWebSystemView();
        });
  }

  String initForTOPDBDVersionWebSystemView() {
    _dataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel
        .getDataForTOPDBDVersionWebSystemView
        ?.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForTOPDBDVersionWebSystemView() {
    _dataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForTOPDBDVersionWebSystemView();
  }

  void _firstBranchOneQListeningStreamFirebaseFirestoreServiceForTOPDBDVersionWebSystemViewQStartListening(Result<TOPDBDVersionWeb> resultTOPDBDVersionWeb) {
    _dataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel
        .getDataForTOPDBDVersionWebSystemView
        ?.exceptionController = resultTOPDBDVersionWeb.exceptionController;
    _dataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForTOPDBDVersionWebSystemView();
  }

  void _firstBranchOneQListeningStreamFirebaseFirestoreServiceForTOPDBDVersionWebSystemViewQGetStringsFromTempCacheServiceNPDS(Result<Strings> resultStringsForVersionByTOPDBDVersionWeb) {
    _dataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel
        .getDataForTOPDBDVersionWebSystemView
        ?.exceptionController = resultStringsForVersionByTOPDBDVersionWeb.exceptionController;
    _dataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForTOPDBDVersionWebSystemView();
  }

  void _firstBranchOneQListeningStreamFirebaseFirestoreServiceForTOPDBDVersionWebSystemViewQGetStringWhereNotEqualsFromVersionParameterVersion(String getStringWhereNotEqualsFromVersionParameterVersion, Result<TOPDBDVersionWeb> resultTOPDBDVersionWeb) {
    _dataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel
        .getDataForTOPDBDVersionWebSystemView
        ?.isValidVersionTOPDBDVersionWeb = false;
    _dataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel
        .getDataForTOPDBDVersionWebSystemView
        ?.versionByTOPDBDVersionWeb = resultTOPDBDVersionWeb.parameter?.version ?? "";
    _dataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForTOPDBDVersionWebSystemView();
  }
}