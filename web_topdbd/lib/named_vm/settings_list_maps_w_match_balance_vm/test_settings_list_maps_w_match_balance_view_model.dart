import 'package:common_topdbd/model/maps_w_match_balance/list_maps_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/maps_w_match_balance.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_list_strings_ee_where_named_ee_from_named_ee_parameters_temp_cache_service_and_stream_subscription/start_listening_and_cancel_listening_ee_list_strings_ee_where_w_list_maps_w_checkbox_ee_from_callback_ee_parameters_temp_cache_service_and_stream_subscription.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_maniac_w_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_maniac_w_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_match_balance_ee_where_its_like_mutable_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_match_balance_ee_where_its_like_mutable_and_stream_notification_is_possible_ee_from_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_list_maps_w_match_balance_vm/data_for_settings_list_maps_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_maps_w_match_balance_vm/i_settings_list_maps_w_match_balance_view_model.dart';

@immutable
final class TestSettingsListMapsWMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsListMapsWMatchBalanceView,
    DefaultStreamWState<DataForSettingsListMapsWMatchBalanceView>> implements ISettingsListMapsWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEManiacWMatchBalanceEEParameterTempCacheService =
  GetEEManiacWMatchBalanceEEParameterTempCacheService();
  final _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService =
  GetEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService();
  final _updateEEMatchBalanceEEWhereItsLikeMutableAndStreamNotificationIsPossibleEEFromMatchBalanceEEParameterTempCacheService =
  UpdateEEMatchBalanceEEWhereItsLikeMutableAndStreamNotificationIsPossibleEEFromMatchBalanceEEParameterTempCacheService();
  final _startListeningAndCancelListeningEEListStringsEEWhereWListMapsWCheckboxEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEListStringsEEWhereWListMapsWCheckboxEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription();

  // NamedUtility

  TestSettingsListMapsWMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForSettingsListMapsWMatchBalanceView(true,"",ListMapsWMatchBalance(List.empty(growable: true)),ListStrings(List.empty(growable: true)),true,false)));

  @override
  void dispose() {
    _startListeningAndCancelListeningEEListStringsEEWhereWListMapsWCheckboxEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .cancelListeningListStringsWhereWListMapsWCheckboxParameterStreamSubscription();
    super.dispose();
  }

  @override
  Future<String> init() async {
    final getManiacWMatchBalanceParameterTempCacheService = _getEEManiacWMatchBalanceEEParameterTempCacheService
        .getManiacWMatchBalanceParameterTempCacheService();
    if(getManiacWMatchBalanceParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetManiacWMatchBalanceParameterTempCacheService(getManiacWMatchBalanceParameterTempCacheService.exceptionController);
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.nameByManiacWMatchBalance = getManiacWMatchBalanceParameterTempCacheService.parameter?.name ?? "";
    getDataForNamedParameterNamedStreamWState.listMapsWMatchBalance = getManiacWMatchBalanceParameterTempCacheService.parameter!.listMapsWMatchBalance.getClone;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void listeningTempCacheService() {
    _startListeningAndCancelListeningEEListStringsEEWhereWListMapsWCheckboxEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .startListeningListStringsWhereWListMapsWCheckboxFromCallbackParametersTempCacheServiceAndStreamSubscription((p0) {
          getDataForNamedParameterNamedStreamWState.listStringsWListMapsWCheckbox = p0.parameter!.getClone;
        });
  }

  @override
  void addItemsBottomSheet() {
    final isEmpty = getDataForNamedParameterNamedStreamWState
        .listStringsWListMapsWCheckbox
        .listModel
        .isEmpty;
    if(isEmpty) {
      _firstQQAddItemsBottomSheetQQIsEmpty();
      return;
    }
    final getMatchBalanceWhereItsLikeMutableParameterTempCacheService = _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService
        .getMatchBalanceWhereItsLikeMutableParameterTempCacheService();
    if(getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      _firstQQAddItemsBottomSheetQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(getMatchBalanceWhereItsLikeMutableParameterTempCacheService.exceptionController);
      return;
    }
    final nameByManiacWMatchBalance = getDataForNamedParameterNamedStreamWState.nameByManiacWMatchBalance;
    final listStringsWListMapsWCheckbox = getDataForNamedParameterNamedStreamWState.listStringsWListMapsWCheckbox;
    final clone = getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .parameter
        !.getClone;
    clone
        .listManiacWMatchBalance
        .insertMapsWMatchBalanceFromNameByManiacWMatchBalanceAndListStringsParameterListModel(nameByManiacWMatchBalance,listStringsWListMapsWCheckbox);
    _updateEEMatchBalanceEEWhereItsLikeMutableAndStreamNotificationIsPossibleEEFromMatchBalanceEEParameterTempCacheService
        .updateMatchBalanceWhereItsLikeMutableAndStreamNotificationIsPossibleFromMatchBalanceParameterTempCacheService(clone);
    getDataForNamedParameterNamedStreamWState
        .insertListMapsWMatchBalanceParametersTwo();
    getDataForNamedParameterNamedStreamWState
        .listStringsWListMapsWCheckbox
        .listModel
        .clear();
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  @override
  void closeBottomSheet() {
    final isEmpty = getDataForNamedParameterNamedStreamWState
        .listStringsWListMapsWCheckbox
        .listModel
        .isEmpty;
    if(isEmpty) {
      _firstQQCloseBottomSheetQQIsEmpty();
      return;
    }
    getDataForNamedParameterNamedStreamWState
        .listStringsWListMapsWCheckbox
        .listModel
        .clear();
  }

  @override
  void deleteItemToListView(MapsWMatchBalance itemMapsWMatchBalance) {
    final getMatchBalanceWhereItsLikeMutableParameterTempCacheService = _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService
        .getMatchBalanceWhereItsLikeMutableParameterTempCacheService();
    if(getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      _firstQQDeleteItemToListViewQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(getMatchBalanceWhereItsLikeMutableParameterTempCacheService.exceptionController);
      return;
    }
    final nameByManiacWMatchBalance = getDataForNamedParameterNamedStreamWState.nameByManiacWMatchBalance;
    final clone = getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .parameter
        !.getClone;
    clone
        .listManiacWMatchBalance
        .deleteMapsWMatchBalanceFromNameByManiacWMatchBalanceAndMapsWMatchBalanceParameterListModel(nameByManiacWMatchBalance,itemMapsWMatchBalance);
    _updateEEMatchBalanceEEWhereItsLikeMutableAndStreamNotificationIsPossibleEEFromMatchBalanceEEParameterTempCacheService
        .updateMatchBalanceWhereItsLikeMutableAndStreamNotificationIsPossibleFromMatchBalanceParameterTempCacheService(clone);
    getDataForNamedParameterNamedStreamWState
        .listMapsWMatchBalance
        .deleteFromUniqueIdByModelParameterListModel(itemMapsWMatchBalance.uniqueId);
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  @override
  void setMaxScrollExtent() {
    getDataForNamedParameterNamedStreamWState.isMaxLeftScroll = false;
    getDataForNamedParameterNamedStreamWState.isMaxRightScroll = true;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  @override
  void setMinScrollExtent() {
    getDataForNamedParameterNamedStreamWState.isMaxLeftScroll = true;
    getDataForNamedParameterNamedStreamWState.isMaxRightScroll = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQQDeleteItemToListViewQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(ExceptionController exceptionController) {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQQCloseBottomSheetQQIsEmpty() {}

  void _firstQQAddItemsBottomSheetQQIsEmpty() {}

  void _firstQQAddItemsBottomSheetQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(ExceptionController exceptionController) {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Future<String> _firstQQInitQQGetManiacWMatchBalanceParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }
}