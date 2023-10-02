import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/data_for_app_view.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/initialized_named_stream_state_q_data_for_app_view/initialized_default_stream_state_q_data_for_app_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_app_view_q_there_is_stream_state_view_model/data_for_app_view_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/country_tc_q_temp_cache_service_view_model/country_tc_q_temp_cache_service_view_model_using_update_list_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/maniac_perk_q_temp_cache_service_view_model/maniac_perk_q_temp_cache_service_view_model_using_update_list_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/maniac_q_temp_cache_service_view_model/maniac_q_temp_cache_service_view_model_using_update_list_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/maps_q_temp_cache_service_view_model/maps_q_temp_cache_service_view_model_using_update_list_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_np_for_version_by_topdbd_version_web.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/survivor_perk_q_temp_cache_service_view_model/survivor_perk_q_temp_cache_service_view_model_using_update_list_np.dart';

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

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForAppViewQThereIsStreamStateViewModel =
  DataForAppViewQThereIsStreamStateViewModel(InitializedDefaultStreamStateQDataForAppView());

  @override
  void dispose() {
    _dataForAppViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForAppView?> get getStreamDataForAppView => _dataForAppViewQThereIsStreamStateViewModel.getStreamDataForAppView;
  DataForAppView? get getDataForAppView => _dataForAppViewQThereIsStreamStateViewModel.getDataForAppView;

  Future<String> initForAppView()
  async {
    final resultBoolForVersionByTOPDBDVersionWeb =  await _stringsQTempCacheServiceViewModelUsingUpdateNPForVersionByTOPDBDVersionWeb
        .updateStringsToTempCacheServiceNPDS();
    if(resultBoolForVersionByTOPDBDVersionWeb
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForAppViewQUpdateStringsToTempCacheServiceNPDS(resultBoolForVersionByTOPDBDVersionWeb);
    }
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
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForAppView() {
    _dataForAppViewQThereIsStreamStateViewModel
        .notifyStreamDataForAppView();
  }

  Future<String> _firstBranchOneQInitForAppViewQUpdateStringsToTempCacheServiceNPDS(Result<bool> resultBoolForVersionByTOPDBDVersionWeb)
  async {
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.isLoading = false;
    _dataForAppViewQThereIsStreamStateViewModel
        .getDataForAppView
        ?.exceptionController = resultBoolForVersionByTOPDBDVersionWeb.exceptionController;
    return resultBoolForVersionByTOPDBDVersionWeb.exceptionController.getKeyParameterException;
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
}