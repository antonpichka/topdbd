import 'package:common_topdbd/model/those_works/those_works.dart';
import 'package:common_topdbd/model/topdbd_version_web/topdbd_version_web.dart';
import 'package:common_topdbd/model/user/user.dart';
import 'package:common_topdbd/named_utility/keys_name_stream_to_temp_cache_service_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/data_for_app_view.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/initialized_named_stream_state_q_data_for_app_view/initialized_default_stream_state_q_data_for_app_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_app_view_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/those_works_q_firebase_firestore_service_view_model/those_works_q_firebase_firestore_service_view_model_using_custom_start_listening_and_cancel_listening.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/topdbd_version_web_q_firebase_firestore_service_view_model/topdbd_version_web_q_firebase_firestore_service_view_model_using_custom_start_listening_and_cancel_listening.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_shared_preference_service_view_model/user_q_shared_preferences_service_view_model/user_q_shared_preferences_service_view_model_using_get_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/country_tc_q_temp_cache_service_view_model/country_tc_q_temp_cache_service_view_model_using_update_list_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model_using_update_parameter_date_time_for_creation_time_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/maniac_perk_q_temp_cache_service_view_model/maniac_perk_q_temp_cache_service_view_model_using_update_list_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/maniac_q_temp_cache_service_view_model/maniac_q_temp_cache_service_view_model_using_update_list_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/maps_q_temp_cache_service_view_model/maps_q_temp_cache_service_view_model_using_update_list_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_custom_start_listening_and_cancel_listening_for_name_location_by_navigation.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_custom_start_listening_and_cancel_listening_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_get_np_for_version_by_topdbd_version_web.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_np_for_version_by_topdbd_version_web.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_name_location_by_navigation.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/survivor_perk_q_temp_cache_service_view_model/survivor_perk_q_temp_cache_service_view_model_using_update_list_np.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';

@immutable
final class AppViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQNamedServiceViewModel
  final _stringsQTempCacheServiceViewModelUsingUpdateNPForVersionByTOPDBDVersionWeb =
  StringsQTempCacheServiceViewModelUsingUpdateNPForVersionByTOPDBDVersionWeb();
  final _survivorPerkQTempCacheServiceViewModelUsingUpdateListNP =
  SurvivorPerkQTempCacheServiceViewModelUsingUpdateListNP();
  final _mapsQTempCacheServiceViewModelUsingUpdateListNP =
  MapsQTempCacheServiceViewModelUsingUpdateListNP();
  final _maniacQTempCacheServiceViewModelUsingUpdateListNP =
  ManiacQTempCacheServiceViewModelUsingUpdateListNP();
  final _maniacPerkQTempCacheServiceViewModelUsingUpdateListNP =
  ManiacPerkQTempCacheServiceViewModelUsingUpdateListNP();
  final _countryTCQTempCacheServiceViewModelUsingUpdateListNP =
  CountryTCQTempCacheServiceViewModelUsingUpdateListNP();
  final _userQSharedPreferencesServiceViewModelUsingGetNP =
  UserQSharedPreferencesServiceViewModelUsingGetNP();
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser();
  final _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser =
  DatesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser();
  final _stringsQTempCacheServiceViewModelUsingGetNPForVersionByTOPDBDVersionWeb =
  StringsQTempCacheServiceViewModelUsingGetNPForVersionByTOPDBDVersionWeb();
  final _stringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser =
  StringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser();
  final _thoseWorksQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening =
  ThoseWorksQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening();
  final _tOPDBDVersionWebQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening =
  TOPDBDVersionWebQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening();
  final _stringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForNameLocationByNavigation =
  StringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForNameLocationByNavigation();
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForNameLocationByNavigation =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForNameLocationByNavigation();

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForAppViewQThereIsStreamStateViewModel =
  DataForAppViewQThereIsStreamStateViewModel(InitializedDefaultStreamStateQDataForAppView());

  @override
  void dispose() {
    _dataForAppViewQThereIsStreamStateViewModel.dispose();
    _stringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser.cancelListening();
    _thoseWorksQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening.cancelListening();
    _tOPDBDVersionWebQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening.cancelListening();
    _stringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForNameLocationByNavigation.cancelListening();
  }

  Stream<DataForAppView?> get getStreamDataForAppView => _dataForAppViewQThereIsStreamStateViewModel.getStreamDataForAppView;
  DataForAppView? get getDataForAppView => _dataForAppViewQThereIsStreamStateViewModel.getDataForAppView;

  Future<void> listeningStreamsTempCacheServiceForAppView()
  async {
    final resultBoolForNameLocationByNavigation =  await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForNameLocationByNavigation
        .updateStringsToTempCacheServiceParameterStringDS(KeysNavigationUtility.selectedNavigationItemViewQTopPlayers);
    if(resultBoolForNameLocationByNavigation
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQInitForAppViewQUpdateStringsToTempCacheServiceParameterStringDS(resultBoolForNameLocationByNavigation);
      return;
    }
    _stringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser
        .startListening(KeysNameStreamToTempCacheServiceUtility.appViewListViewModelQUniqueIdByUser,(Result<Strings> resultStringsForUniqueIdByUser) {
          if(resultStringsForUniqueIdByUser.parameter?.field.isEmpty ?? false) {
            _dataForAppViewQThereIsStreamStateViewModel
                .getDataForAppView
                ?.uniqueIdByUser = "";
            _dataForAppViewQThereIsStreamStateViewModel
                .getDataForAppView
                ?.isPreMainView = false;
            _dataForAppViewQThereIsStreamStateViewModel
                .notifyStreamDataForAppView();
            return;
          }
          _dataForAppViewQThereIsStreamStateViewModel
              .getDataForAppView
              ?.uniqueIdByUser = resultStringsForUniqueIdByUser.parameter?.field ?? "";
          _dataForAppViewQThereIsStreamStateViewModel
              .notifyStreamDataForAppView();
        });
    _stringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForNameLocationByNavigation
        .startListening(KeysNameStreamToTempCacheServiceUtility.appViewListViewModelQNameLocationByNavigation, (Result<Strings> resultStringsForNameLocationByNavigation) {
          _dataForAppViewQThereIsStreamStateViewModel
              .getDataForAppView
              ?.nameLocationByNavigation = resultStringsForNameLocationByNavigation.parameter?.field ?? "";
          _dataForAppViewQThereIsStreamStateViewModel
              .notifyStreamDataForAppView();
        });
  }

  Future<void> listeningStreamsFirebaseFirestoreServiceForAppView()
  async {
    final resultBoolForVersionByTOPDBDVersionWeb = await _stringsQTempCacheServiceViewModelUsingUpdateNPForVersionByTOPDBDVersionWeb
        .updateStringsToTempCacheServiceNPDS();
    if(resultBoolForVersionByTOPDBDVersionWeb
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForAppViewQUpdateStringsToTempCacheServiceNPDS(resultBoolForVersionByTOPDBDVersionWeb);
      return;
    }
    _thoseWorksQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening
        .startListening((Result<ThoseWorks> resultThoseWorks) {
      if(resultThoseWorks
          .exceptionController
          .isNotEqualsNullParameterException())
      {
        _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForAppViewQStartListening(resultThoseWorks);
        return;
      }
      _dataForAppViewQThereIsStreamStateViewModel
          .getDataForAppView
          ?.isThoseWorks = resultThoseWorks.parameter?.isThoseWorks ?? false;
      _dataForAppViewQThereIsStreamStateViewModel
          .notifyStreamDataForAppView();
    });
    _tOPDBDVersionWebQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening
        .startListening((Result<TOPDBDVersionWeb> resultTOPDBDVersionWeb)
    async {
      if(resultTOPDBDVersionWeb
          .exceptionController
          .isNotEqualsNullParameterException())
      {
        _secondBranchOneQListeningStreamsFirebaseFirestoreServiceForAppViewQStartListening(resultTOPDBDVersionWeb);
        return;
      }
      final resultStringsForVersionByTOPDBDVersionWeb = await _stringsQTempCacheServiceViewModelUsingGetNPForVersionByTOPDBDVersionWeb
          .getStringsFromTempCacheServiceNPDS();
      if(resultStringsForVersionByTOPDBDVersionWeb
          .exceptionController
          .isNotEqualsNullParameterException())
      {
        _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForAppViewQGetStringsFromTempCacheServiceNPDS(resultStringsForVersionByTOPDBDVersionWeb);
        return;
      }
      final getStringWhereNotEqualsFromVersionParameterVersion = resultTOPDBDVersionWeb
          .parameter
          ?.getStringWhereNotEqualsFromVersionParameterVersion(resultStringsForVersionByTOPDBDVersionWeb.parameter?.field ?? "") ?? "";
      if(getStringWhereNotEqualsFromVersionParameterVersion.isNotEmpty) {
        _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForAppViewQGetStringWhereNotEqualsFromVersionParameterVersion(getStringWhereNotEqualsFromVersionParameterVersion,resultTOPDBDVersionWeb);
        return;
      }
      _dataForAppViewQThereIsStreamStateViewModel
          .getDataForAppView
          ?.isNotValidVersionTOPDBDVersionWeb = false;
      _dataForAppViewQThereIsStreamStateViewModel
          .getDataForAppView
          ?.versionByTOPDBDVersionWeb = resultTOPDBDVersionWeb.parameter?.version ?? "";
      _dataForAppViewQThereIsStreamStateViewModel
          .notifyStreamDataForAppView();
    });
  }

  Future<String> initForAppView()
  async {
    final resultBool = await _survivorPerkQTempCacheServiceViewModelUsingUpdateListNP
        .updateListSurvivorPerkToTempCacheServiceNPDS();
    if(resultBool
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForAppViewQUpdateListSurvivorPerkToTempCacheServiceNPDS(resultBool);
    }
    final resultBoolTwo = await _mapsQTempCacheServiceViewModelUsingUpdateListNP
        .updateListMapsToTempCacheServiceNPDS();
    if(resultBoolTwo
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForAppViewQUpdateListMapsToTempCacheServiceNPDS(resultBoolTwo);
    }
    final resultBoolThree = await _maniacQTempCacheServiceViewModelUsingUpdateListNP
        .updateListManiacToTempCacheServiceNPDS();
    if(resultBoolThree
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForAppViewQUpdateListManiacToTempCacheServiceNPDS(resultBoolThree);
    }
    final resultBoolFour = await _maniacPerkQTempCacheServiceViewModelUsingUpdateListNP
        .updateListManiacPerkToTempCacheServiceNPDS();
    if(resultBoolFour
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForAppViewQUpdateListManiacPerkToTempCacheServiceNPDS(resultBoolFour);
    }
    final resultBoolFive = await _countryTCQTempCacheServiceViewModelUsingUpdateListNP
        .updateListCountryTCToTempCacheServiceNPDS();
    if(resultBoolFive
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForAppViewQUpdateListCountryTCToTempCacheServiceNPDS(resultBoolFive);
    }
    final resultUser = await _userQSharedPreferencesServiceViewModelUsingGetNP
        .getUserFromSharedPreferencesServiceNPDS();
    if(resultUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForAppViewQGetUserFromSharedPreferencesServiceNPDS(resultUser);
    }
    final getStringWhereIsEmptyParameterUniqueId = resultUser
        .parameter
        ?.getStringWhereIsEmptyParameterUniqueId ?? "";
    if(getStringWhereIsEmptyParameterUniqueId.isNotEmpty) {
      return _firstBranchOneQInitForAppViewQGetStringWhereIsEmptyParameterUniqueId(getStringWhereIsEmptyParameterUniqueId);
    }
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser
        .updateStringsToTempCacheServiceParameterStringDS(resultUser.parameter?.uniqueId ?? "");
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultUser.parameter?.creationTime ?? DateTime.now());
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.isLoading = false;
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.uniqueIdByUser = resultUser.parameter?.uniqueId ?? "";
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.isPreMainView = true;
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForAppView() {
    _dataForAppViewQThereIsStreamStateViewModel
        .notifyStreamDataForAppView();
  }

  Future<String> _firstBranchOneQInitForAppViewQUpdateListSurvivorPerkToTempCacheServiceNPDS(Result<bool> resultBool)
  async {
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.isLoading = false;
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.exceptionController = resultBool.exceptionController;
    return resultBool.exceptionController.getKeyParameterException;
  }

  Future<String> _firstBranchOneQInitForAppViewQUpdateListMapsToTempCacheServiceNPDS(Result<bool> resultBoolTwo)
  async {
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.isLoading = false;
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.exceptionController = resultBoolTwo.exceptionController;
    return resultBoolTwo.exceptionController.getKeyParameterException;
  }

  Future<String> _firstBranchOneQInitForAppViewQUpdateListManiacToTempCacheServiceNPDS(Result<bool> resultBoolThree)
  async {
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.isLoading = false;
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.exceptionController = resultBoolThree.exceptionController;
    return resultBoolThree.exceptionController.getKeyParameterException;
  }

  Future<String> _firstBranchOneQInitForAppViewQUpdateListManiacPerkToTempCacheServiceNPDS(Result<bool> resultBoolFour)
  async {
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.isLoading = false;
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.exceptionController = resultBoolFour.exceptionController;
    return resultBoolFour.exceptionController.getKeyParameterException;
  }

  Future<String> _firstBranchOneQInitForAppViewQUpdateListCountryTCToTempCacheServiceNPDS(Result<bool> resultBoolFive)
  async {
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.isLoading = false;
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.exceptionController = resultBoolFive.exceptionController;
    return resultBoolFive.exceptionController.getKeyParameterException;
  }

  Future<String> _firstBranchOneQInitForAppViewQGetUserFromSharedPreferencesServiceNPDS(Result<User> resultUser)
  async {
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.isLoading = false;
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.exceptionController = resultUser.exceptionController;
    return resultUser.exceptionController.getKeyParameterException;
  }

  Future<String> _firstBranchOneQInitForAppViewQGetStringWhereIsEmptyParameterUniqueId(String getStringWhereIsEmptyParameterUniqueId)
  async {
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.isLoading = false;
    return getStringWhereIsEmptyParameterUniqueId;
  }

  void _firstBranchOneQInitForAppViewQUpdateStringsToTempCacheServiceParameterStringDS(Result<bool> resultBoolForNameLocationByNavigation) {
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.exceptionController = resultBoolForNameLocationByNavigation.exceptionController;
    _dataForAppViewQThereIsStreamStateViewModel
        .notifyStreamDataForAppView();
  }

  void _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForAppViewQUpdateStringsToTempCacheServiceNPDS(Result<bool> resultBoolForVersionByTOPDBDVersionWeb) {
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.exceptionController = resultBoolForVersionByTOPDBDVersionWeb.exceptionController;
    _dataForAppViewQThereIsStreamStateViewModel
        .notifyStreamDataForAppView();
  }

  void _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForAppViewQStartListening(Result<ThoseWorks> resultThoseWorks) {
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.exceptionController = resultThoseWorks.exceptionController;
    _dataForAppViewQThereIsStreamStateViewModel
        .notifyStreamDataForAppView();
  }

  void _secondBranchOneQListeningStreamsFirebaseFirestoreServiceForAppViewQStartListening(Result<TOPDBDVersionWeb> resultTOPDBDVersionWeb) {
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.exceptionController = resultTOPDBDVersionWeb.exceptionController;
    _dataForAppViewQThereIsStreamStateViewModel
        .notifyStreamDataForAppView();
  }

  void _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForAppViewQGetStringsFromTempCacheServiceNPDS(Result<Strings> resultStringsForVersionByTOPDBDVersionWeb) {
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.exceptionController = resultStringsForVersionByTOPDBDVersionWeb.exceptionController;
    _dataForAppViewQThereIsStreamStateViewModel
        .notifyStreamDataForAppView();
  }

  void _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForAppViewQGetStringWhereNotEqualsFromVersionParameterVersion(String getStringWhereNotEqualsFromVersionParameterVersion, Result<TOPDBDVersionWeb> resultTOPDBDVersionWeb) {
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.isNotValidVersionTOPDBDVersionWeb = true;
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.versionByTOPDBDVersionWeb = resultTOPDBDVersionWeb.parameter?.version ?? "";
    _dataForAppViewQThereIsStreamStateViewModel
        .notifyStreamDataForAppView();
  }
}