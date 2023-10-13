import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/model/verified_user/verified_user.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_main_view/data_for_main_view.dart';
import 'package:web_topdbd/data_for_named/data_for_main_view/initialized_default_stream_state_q_data_for_main_view/initialized_default_stream_state_q_data_for_main_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_main_view_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/ip_address_firestore_q_firebase_firestore_service_view_model/ip_address_firestore_q_firebase_firestore_service_view_model_using_custom_start_listening_and_cancel_listening.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/verified_user_q_firebase_firestore_service_view_model/verified_user_q_firebase_firestore_service_view_model_using_custom_start_listening_and_cancel_listening.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_shared_preference_service_view_model/user_q_shared_preferences_service_view_model/user_q_shared_preferences_service_view_model_using_delete_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model_using_update_parameter_bool_for_is_verified_user_by_verified_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_get_np_for_ip_by_ip_address.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_get_np_for_unique_id_by_user.dart';

@immutable
final class MainViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQNamedServiceViewModel
  final _stringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser =
  StringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser();
  final _verifiedUserQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening =
  VerifiedUserQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening();
  final _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening =
  IPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening();
  final _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsVerifiedUserByVerifiedUser =
  BoolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsVerifiedUserByVerifiedUser();
  final _stringsQTempCacheServiceViewModelUsingGetNPForIpByIPAddress =
  StringsQTempCacheServiceViewModelUsingGetNPForIpByIPAddress();
  final _userQSharedPreferencesServiceViewModelUsingDeleteNP =
  UserQSharedPreferencesServiceViewModelUsingDeleteNP();

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForMainViewQThereIsStreamStateViewModel =
  DataForMainViewQThereIsStreamStateViewModel(InitializedDefaultStreamStateQDataForMainView());

  @override
  void dispose() {
    _verifiedUserQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening.cancelListening();
    _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening.cancelListening();
    _dataForMainViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForMainView?> get getStreamDataForMainView => _dataForMainViewQThereIsStreamStateViewModel.getStreamDataForMainView;
  DataForMainView? get getDataForMainView => _dataForMainViewQThereIsStreamStateViewModel.getDataForMainView;

  Future<void> listeningStreamsFirebaseFirestoreServiceForMainView()
  async {
    final resultStringsForUniqueIdByUser = await _stringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser
        .getStringsFromTempCacheServiceNPDS();
    if(resultStringsForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForMainViewQGetStringsFromTempCacheServiceNPDS(resultStringsForUniqueIdByUser);
      return;
    }
    await _verifiedUserQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening
        .startListening(resultStringsForUniqueIdByUser.parameter?.field ?? "", (Result<VerifiedUser> resultVerifiedUser)
    async {
      if(resultVerifiedUser
          .exceptionController
          .isNotEqualsNullParameterException())
      {
        _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForMainViewQStartListening(resultVerifiedUser);
        return;
      }
      await _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsVerifiedUserByVerifiedUser
          .updateBoolsToTempCacheServiceParameterBoolDS(resultVerifiedUser.parameter?.isVerifiedUser ?? false);
      _dataForMainViewQThereIsStreamStateViewModel
          .getDataForMainView
          ?.isNotVerifiedUserByVerifiedUser = ((resultVerifiedUser.parameter?.isVerifiedUser ?? false) ? false : true);
      _dataForMainViewQThereIsStreamStateViewModel
          .notifyStreamDataForMainView();
    });
    await _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening
        .startListening(resultStringsForUniqueIdByUser.parameter?.field ?? "",(Result<IPAddressFirestore> resultIPAddressFirestore)
    async {
      if(resultIPAddressFirestore
          .exceptionController
          .isNotEqualsNullParameterException())
      {
        _secondBranchOneQListeningStreamsFirebaseFirestoreServiceForMainViewQStartListening(resultIPAddressFirestore);
        return;
      }
      final resultStringsForIpByIPAddress = await _stringsQTempCacheServiceViewModelUsingGetNPForIpByIPAddress
          .getStringsFromTempCacheServiceNPDS();
      if(resultStringsForIpByIPAddress
          .exceptionController
          .isNotEqualsNullParameterException())
      {
        _firstBranchTwoQListeningStreamsFirebaseFirestoreServiceForMainViewQGetStringsFromTempCacheServiceNPDS(resultStringsForIpByIPAddress);
        return;
      }
      final getStringWhereNotEqualsFromIpParameterIp = resultIPAddressFirestore
          .parameter
          ?.getStringWhereNotEqualsFromIpParameterIp(resultStringsForIpByIPAddress.parameter?.field ?? "") ?? "";
      if(getStringWhereNotEqualsFromIpParameterIp.isNotEmpty) {
        _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForMainViewQGetStringWhereNotEqualsFromIpParameterIp(getStringWhereNotEqualsFromIpParameterIp);
        return;
      }
      _dataForMainViewQThereIsStreamStateViewModel
          .notifyStreamDataForMainView();
    });
  }

  String initForMainView() {
    _dataForMainViewQThereIsStreamStateViewModel
        .getDataForMainView
        ?.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForMainView() {
    _dataForMainViewQThereIsStreamStateViewModel
        .notifyStreamDataForMainView();
  }

  void _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForMainViewQGetStringsFromTempCacheServiceNPDS(Result<Strings> resultStringsForUniqueIdByUser) {
    _dataForMainViewQThereIsStreamStateViewModel
        .getDataForMainView
        ?.exceptionController = resultStringsForUniqueIdByUser.exceptionController;
    _dataForMainViewQThereIsStreamStateViewModel
        .notifyStreamDataForMainView();
  }

  void _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForMainViewQStartListening(Result<VerifiedUser> resultVerifiedUser) {
    _dataForMainViewQThereIsStreamStateViewModel
        .getDataForMainView
        ?.exceptionController = resultVerifiedUser.exceptionController;
    _dataForMainViewQThereIsStreamStateViewModel
        .notifyStreamDataForMainView();
  }

  void _secondBranchOneQListeningStreamsFirebaseFirestoreServiceForMainViewQStartListening(Result<IPAddressFirestore> resultIPAddressFirestore) {
    _dataForMainViewQThereIsStreamStateViewModel
        .getDataForMainView
        ?.exceptionController = resultIPAddressFirestore.exceptionController;
    _dataForMainViewQThereIsStreamStateViewModel
        .notifyStreamDataForMainView();
  }

  void _firstBranchTwoQListeningStreamsFirebaseFirestoreServiceForMainViewQGetStringsFromTempCacheServiceNPDS(Result<Strings> resultStringsForIpByIPAddress) {
    _dataForMainViewQThereIsStreamStateViewModel
        .getDataForMainView
        ?.exceptionController = resultStringsForIpByIPAddress.exceptionController;
    _dataForMainViewQThereIsStreamStateViewModel
        .notifyStreamDataForMainView();
  }

  Future<void> _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForMainViewQGetStringWhereNotEqualsFromIpParameterIp(String getStringWhereNotEqualsFromIpParameterIp)
  async {
    await _userQSharedPreferencesServiceViewModelUsingDeleteNP
        .deleteUserToSharedPreferencesServiceNPDS();
    _dataForMainViewQThereIsStreamStateViewModel
        .getDataForMainView
        ?.isHack = true;
    _dataForMainViewQThereIsStreamStateViewModel
        .notifyStreamDataForMainView();
  }
}