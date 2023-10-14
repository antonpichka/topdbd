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
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_get_np_for_name_location_by_navigation.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_get_np_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_name_location_by_navigation.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';

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
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForNameLocationByNavigation =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForNameLocationByNavigation();
  final _stringsQTempCacheServiceViewModelUsingGetNPForNameLocationByNavigation =
  StringsQTempCacheServiceViewModelUsingGetNPForNameLocationByNavigation();

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
      final getStringWhereIsNotVerifiedUserParameterIsVerifiedUser = resultVerifiedUser
          .parameter
          ?.getStringWhereIsNotVerifiedUserParameterIsVerifiedUser ?? "";
      if(getStringWhereIsNotVerifiedUserParameterIsVerifiedUser.isNotEmpty) {
        _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForMainViewQGetStringWhereIsNotVerifiedUserParameterIsVerifiedUser(getStringWhereIsNotVerifiedUserParameterIsVerifiedUser,resultVerifiedUser.parameter ?? const VerifiedUser("",false));
        return;
      }
      final resultStringsForNameLocationByNavigation = await _stringsQTempCacheServiceViewModelUsingGetNPForNameLocationByNavigation
          .getStringsFromTempCacheServiceNPDS();
      if(resultStringsForNameLocationByNavigation
          .exceptionController
          .isNotEqualsNullParameterException())
      {
        _secondBranchOneQListeningStreamsFirebaseFirestoreServiceForMainViewQGetStringsFromTempCacheServiceNPDS(resultStringsForNameLocationByNavigation);
        return;
      }
      final isNotEqualsParameterNameLocationByNavigation = resultStringsForNameLocationByNavigation
          .parameter
          ?.field != KeysNavigationUtility.selectedNavigationItemViewQTopPlayers;
      if(isNotEqualsParameterNameLocationByNavigation) {
        _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForMainViewQIsNotEqualsParameterNameLocationByNavigation(isNotEqualsParameterNameLocationByNavigation,resultVerifiedUser.parameter ?? const VerifiedUser("",false));
        return;
      }
      _dataForMainViewQThereIsStreamStateViewModel
          .getDataForMainView
          ?.isNotVerifiedUserByVerifiedUser =  resultVerifiedUser.parameter?.isNotVerifiedUserParameterIsVerifiedUser() ?? false;
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
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForNameLocationByNavigation
        .updateStringsToTempCacheServiceParameterStringDS(KeysNavigationUtility.mainViewQHack);
    _dataForMainViewQThereIsStreamStateViewModel
        .getDataForMainView
        ?.isHack = true;
    _dataForMainViewQThereIsStreamStateViewModel
        .notifyStreamDataForMainView();
  }

  void _secondBranchOneQListeningStreamsFirebaseFirestoreServiceForMainViewQGetStringsFromTempCacheServiceNPDS(Result<Strings> resultStringsForNameLocationByNavigation) {
    _dataForMainViewQThereIsStreamStateViewModel
        .getDataForMainView
        ?.exceptionController = resultStringsForNameLocationByNavigation.exceptionController;
    _dataForMainViewQThereIsStreamStateViewModel
        .notifyStreamDataForMainView();
  }

  Future<void> _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForMainViewQGetStringWhereIsNotVerifiedUserParameterIsVerifiedUser(String getStringWhereIsNotVerifiedUserParameterIsVerifiedUser, VerifiedUser verifiedUser)
  async {
    final resultStringsForNameLocationByNavigation = await _stringsQTempCacheServiceViewModelUsingGetNPForNameLocationByNavigation
        .getStringsFromTempCacheServiceNPDS();
    if(resultStringsForNameLocationByNavigation
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchTwoQListeningStreamsFirebaseFirestoreServiceForMainViewQGetStringWhereIsNotVerifiedUserParameterIsVerifiedUser(resultStringsForNameLocationByNavigation);
      return;
    }
    final isNotEqualsParameterNameLocationByNavigation = resultStringsForNameLocationByNavigation
        .parameter
        ?.field != KeysNavigationUtility.mainViewQNotVerified;
    if(isNotEqualsParameterNameLocationByNavigation) {
      _firstBranchThreeQListeningStreamsFirebaseFirestoreServiceForMainViewQGetStringWhereIsNotVerifiedUserParameterIsVerifiedUser(isNotEqualsParameterNameLocationByNavigation,verifiedUser);
      return;
    }
    _dataForMainViewQThereIsStreamStateViewModel
        .getDataForMainView
        ?.isNotVerifiedUserByVerifiedUser = verifiedUser.isNotVerifiedUserParameterIsVerifiedUser();
    _dataForMainViewQThereIsStreamStateViewModel
        .notifyStreamDataForMainView();
  }

  Future<void> _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForMainViewQIsNotEqualsParameterNameLocationByNavigation(bool isNotEqualsParameterNameLocationByNavigation, VerifiedUser verifiedUser)
  async {
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForNameLocationByNavigation
        .updateStringsToTempCacheServiceParameterStringDS(KeysNavigationUtility.selectedNavigationItemViewQTopPlayers);
    _dataForMainViewQThereIsStreamStateViewModel
        .getDataForMainView
        ?.isNotVerifiedUserByVerifiedUser =  verifiedUser.isNotVerifiedUserParameterIsVerifiedUser();
    _dataForMainViewQThereIsStreamStateViewModel
        .notifyStreamDataForMainView();
  }

  void _firstBranchTwoQListeningStreamsFirebaseFirestoreServiceForMainViewQGetStringWhereIsNotVerifiedUserParameterIsVerifiedUser(Result<Strings> resultStringsForNameLocationByNavigation) {
    _dataForMainViewQThereIsStreamStateViewModel
        .getDataForMainView
        ?.exceptionController = resultStringsForNameLocationByNavigation.exceptionController;
    _dataForMainViewQThereIsStreamStateViewModel
        .notifyStreamDataForMainView();
  }

  Future<void> _firstBranchThreeQListeningStreamsFirebaseFirestoreServiceForMainViewQGetStringWhereIsNotVerifiedUserParameterIsVerifiedUser(bool isNotEqualsParameterNameLocationByNavigation, VerifiedUser verifiedUser)
  async {
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForNameLocationByNavigation
        .updateStringsToTempCacheServiceParameterStringDS(KeysNavigationUtility.mainViewQNotVerified);
    _dataForMainViewQThereIsStreamStateViewModel
        .getDataForMainView
        ?.isNotVerifiedUserByVerifiedUser =  verifiedUser.isNotVerifiedUserParameterIsVerifiedUser();
    _dataForMainViewQThereIsStreamStateViewModel
        .notifyStreamDataForMainView();
  }
}