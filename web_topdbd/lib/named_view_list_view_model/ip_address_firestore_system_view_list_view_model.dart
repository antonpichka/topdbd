import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_ip_address_firestore_system_view/data_for_ip_address_firestore_system_view.dart';
import 'package:web_topdbd/data_for_named/data_for_ip_address_firestore_system_view/initialized_named_stream_state_q_data_for_ip_address_firestore_system_view/initialized_default_stream_state_q_data_for_ip_address_firestore_system_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_ip_address_firestore_system_view_q_there_is_stream_state_view_model/data_for_ip_address_firestore_system_view_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/ip_address_firestore_q_firebase_firestore_service_view_model/ip_address_firestore_q_firebase_firestore_service_view_model_using_custom_start_listening_and_cancel_listening.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_get_np_for_ip_by_ip_address.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_get_np_for_unique_id_by_user.dart';

final class IPAddressFirestoreSystemViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQNamedServiceViewModel
  final _stringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser =
  StringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser();
  final _stringsQTempCacheServiceViewModelUsingGetNPForIpByIPAddress =
  StringsQTempCacheServiceViewModelUsingGetNPForIpByIPAddress();
  final _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening =
  IPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening();

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel =
  DataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel(InitializedDefaultStreamStateQDataForIPAddressFirestoreSystemView());

  @override
  void dispose() {
    _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening.cancelListening();
    _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForIPAddressFirestoreSystemView?> get getStreamDataForIPAddressFirestoreSystemView => _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel.getStreamDataForIPAddressFirestoreSystemView;
  DataForIPAddressFirestoreSystemView? get getDataForIPAddressFirestoreSystemView => _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel.getDataForIPAddressFirestoreSystemView;

  Future<void> listeningStreamsFirebaseFirestoreServiceForIPAddressFirestoreSystemView()
  async {
    final resultStringsForUniqueIdByUser = await _stringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser
        .getStringsFromTempCacheServiceNPDS();
    if(resultStringsForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForIPAddressFirestoreSystemViewQGetStringsFromTempCacheServiceNPDS(resultStringsForUniqueIdByUser);
      return;
    }
    await _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening
        .startListening(resultStringsForUniqueIdByUser.parameter?.field ?? "",(Result<IPAddressFirestore> resultIPAddressFirestore) async {
          if(resultIPAddressFirestore
              .exceptionController
              .isNotEqualsNullParameterException())
          {
            _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForIPAddressFirestoreSystemViewQStartListening(resultIPAddressFirestore);
            return;
          }
          final resultStringsForIpByIPAddress = await _stringsQTempCacheServiceViewModelUsingGetNPForIpByIPAddress
              .getStringsFromTempCacheServiceNPDS();
          if(resultStringsForIpByIPAddress
              .exceptionController
              .isNotEqualsNullParameterException())
          {
            _firstBranchTwoQListeningStreamsFirebaseFirestoreServiceForIPAddressFirestoreSystemViewQGetStringsFromTempCacheServiceNPDS(resultStringsForIpByIPAddress);
            return;
          }
          final getStringWhereNotEqualsFromIpParameterIp = resultIPAddressFirestore
              .parameter
              ?.getStringWhereNotEqualsFromIpParameterIp(resultStringsForIpByIPAddress.parameter?.field ?? "") ?? "";
          if(getStringWhereNotEqualsFromIpParameterIp.isNotEmpty) {
            _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForIPAddressFirestoreSystemViewQGetStringWhereNotEqualsFromIpParameterIp(getStringWhereNotEqualsFromIpParameterIp);
            return;
          }
          _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel
              .getDataForIPAddressFirestoreSystemView
              ?.isLoading = false;
          _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel
              .notifyStreamDataForIPAddressFirestoreSystemView();
        });
  }

  String initForIPAddressFirestoreSystemView() {
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForIPAddressFirestoreSystemView() {
    _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForIPAddressFirestoreSystemView();
  }

  void _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForIPAddressFirestoreSystemViewQGetStringsFromTempCacheServiceNPDS(Result<Strings> resultStringsForUniqueIdByUser) {
    _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel
        .getDataForIPAddressFirestoreSystemView
        ?.isLoading = false;
    _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel
        .getDataForIPAddressFirestoreSystemView
        ?.exceptionController = resultStringsForUniqueIdByUser.exceptionController;
    _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForIPAddressFirestoreSystemView();
  }

  void _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForIPAddressFirestoreSystemViewQStartListening(Result<IPAddressFirestore> resultIPAddressFirestore) {
    _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel
        .getDataForIPAddressFirestoreSystemView
        ?.isLoading = false;
    _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel
        .getDataForIPAddressFirestoreSystemView
        ?.exceptionController = resultIPAddressFirestore.exceptionController;
    _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForIPAddressFirestoreSystemView();
  }

  void _firstBranchTwoQListeningStreamsFirebaseFirestoreServiceForIPAddressFirestoreSystemViewQGetStringsFromTempCacheServiceNPDS(Result<Strings> resultStringsForIpByIPAddress) {
    _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel
        .getDataForIPAddressFirestoreSystemView
        ?.isLoading = false;
    _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel
        .getDataForIPAddressFirestoreSystemView
        ?.exceptionController = resultStringsForIpByIPAddress.exceptionController;
    _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForIPAddressFirestoreSystemView();
  }

  void _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForIPAddressFirestoreSystemViewQGetStringWhereNotEqualsFromIpParameterIp(String getStringWhereNotEqualsFromIpParameterIp) {
    _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel
        .getDataForIPAddressFirestoreSystemView
        ?.isLoading = false;
    _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel
        .getDataForIPAddressFirestoreSystemView
        ?.isHack = true;
    _dataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForIPAddressFirestoreSystemView();
  }
}