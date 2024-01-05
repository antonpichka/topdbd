import 'package:common_topdbd/model/maniac_perk_w_match_balance/list_maniac_perk_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/list_maps_w_match_balance.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/list_survivor_perk_w_match_balance.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_list_strings_ee_where_named_ee_from_named_ee_parameters_temp_cache_service_and_stream_subscription/start_listening_and_cancel_listening_ee_list_strings_ee_where_w_list_maniac_w_checkbox_ee_from_callback_ee_parameters_temp_cache_service_and_stream_subscription.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_maniac_w_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_maniac_w_match_balance_ee_where_stream_notification_is_possible_ee_from_maniac_w_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_match_balance_ee_where_its_like_mutable_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_match_balance_ee_where_its_like_mutable_and_stream_notification_is_possible_ee_from_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service_and_stream_subscription/start_listening_and_cancel_listening_ee_match_balance_ee_where_its_like_mutable_ee_from_callback_ee_parameters_temp_cache_service_and_stream_subscription.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_list_maniac_w_match_balance_vm/data_for_settings_list_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_maniac_w_match_balance_vm/i_settings_list_maniac_w_match_balance_view_model.dart';

@immutable
final class TestSettingsListManiacWMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsListManiacWMatchBalanceView,
    DefaultStreamWState<DataForSettingsListManiacWMatchBalanceView>> implements ISettingsListManiacWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService =
  GetEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService();
  final _updateEEMatchBalanceEEWhereItsLikeMutableAndStreamNotificationIsPossibleEEFromMatchBalanceEEParameterTempCacheService =
  UpdateEEMatchBalanceEEWhereItsLikeMutableAndStreamNotificationIsPossibleEEFromMatchBalanceEEParameterTempCacheService();
  final _updateEEManiacWMatchBalanceEEWhereStreamNotificationIsPossibleEEFromManiacWMatchBalanceEEParameterTempCacheService =
  UpdateEEManiacWMatchBalanceEEWhereStreamNotificationIsPossibleEEFromManiacWMatchBalanceEEParameterTempCacheService();
  final _startListeningAndCancelListeningEEListStringsEEWhereWListManiacWCheckboxEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEListStringsEEWhereWListManiacWCheckboxEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription();
  final _startListeningAndCancelListeningEEMatchBalanceEEWhereItsLikeMutableEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEMatchBalanceEEWhereItsLikeMutableEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription();

  // NamedUtility

  TestSettingsListManiacWMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForSettingsListManiacWMatchBalanceView(true,ListStrings(List.empty(growable: true)),true,false,"",ListManiacWMatchBalance(List.empty(growable: true)))));

  @override
  void dispose() {
    _startListeningAndCancelListeningEEListStringsEEWhereWListManiacWCheckboxEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .cancelListeningListStringsWhereWListManiacWCheckboxParameterStreamSubscription();
    _startListeningAndCancelListeningEEMatchBalanceEEWhereItsLikeMutableEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .cancelListeningMatchBalanceWhereItsLikeMutableParameterStreamSubscription();
    super.dispose();
  }

  @override
  Future<String> init() async {
    final getMatchBalanceWhereItsLikeMutableParameterTempCacheService = _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService
        .getMatchBalanceWhereItsLikeMutableParameterTempCacheService();
    if(getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(getMatchBalanceWhereItsLikeMutableParameterTempCacheService.exceptionController);
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.listManiacWMatchBalanceByMatchBalance = getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .parameter
        !.listManiacWMatchBalance
        .getClone;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void listeningTempCacheService() {
    _startListeningAndCancelListeningEEListStringsEEWhereWListManiacWCheckboxEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .startListeningListStringsWhereWListManiacWCheckboxFromCallbackParametersTempCacheServiceAndStreamSubscription((p0) {
          getDataForNamedParameterNamedStreamWState.listStringsWListManiacWCheckbox = p0.parameter!.getClone;
        });
    _startListeningAndCancelListeningEEMatchBalanceEEWhereItsLikeMutableEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .startListeningMatchBalanceWhereItsLikeMutableFromCallbackParametersTempCacheServiceAndStreamSubscription((p0) {
          getDataForNamedParameterNamedStreamWState.listManiacWMatchBalanceByMatchBalance = p0.parameter!.listManiacWMatchBalance.getClone;
          notifyStreamDataForNamedParameterNamedStreamWState();
        });
  }

  @override
  void onTapItemToListView(ManiacWMatchBalance itemManiacWMatchBalance) {
    getDataForNamedParameterNamedStreamWState
        .selectedItemManiacWMatchBalance = itemManiacWMatchBalance.name;
    _updateEEManiacWMatchBalanceEEWhereStreamNotificationIsPossibleEEFromManiacWMatchBalanceEEParameterTempCacheService
        .updateManiacWMatchBalanceWhereStreamNotificationIsPossibleFromManiacWMatchBalanceParameterTempCacheService(itemManiacWMatchBalance.getClone);
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  @override
  void deleteItemToListView(ManiacWMatchBalance itemManiacWMatchBalance) {
    final getMatchBalanceWhereItsLikeMutableParameterTempCacheService = _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService
        .getMatchBalanceWhereItsLikeMutableParameterTempCacheService();
    if(getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      _firstQQDeleteItemToListViewQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(getMatchBalanceWhereItsLikeMutableParameterTempCacheService.exceptionController);
      return;
    }
    final isWhereEqualsFromNameParameterSelectedItemManiacWMatchBalance = getDataForNamedParameterNamedStreamWState
        .isWhereEqualsFromNameParameterSelectedItemManiacWMatchBalance(itemManiacWMatchBalance.name);
    if(isWhereEqualsFromNameParameterSelectedItemManiacWMatchBalance) {
      _firstQQDeleteItemToListViewQQIsWhereEqualsFromNameParameterSelectedItemManiacWMatchBalance(getMatchBalanceWhereItsLikeMutableParameterTempCacheService.parameter!,itemManiacWMatchBalance);
      return;
    }
    final clone = getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .parameter
        !.getClone;
    clone
        .listManiacWMatchBalance
        .deleteFromUniqueIdByModelParameterListModel(itemManiacWMatchBalance.uniqueId);
    _updateEEMatchBalanceEEWhereItsLikeMutableAndStreamNotificationIsPossibleEEFromMatchBalanceEEParameterTempCacheService
        .updateMatchBalanceWhereItsLikeMutableAndStreamNotificationIsPossibleFromMatchBalanceParameterTempCacheService(clone);
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

  @override
  void addItemsBottomSheet() {
    final isEmpty = getDataForNamedParameterNamedStreamWState
        .listStringsWListManiacWCheckbox
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
    final listStringsWListManiacWCheckbox = getDataForNamedParameterNamedStreamWState.listStringsWListManiacWCheckbox;
    final clone = getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .parameter
        !.getClone;
    clone
        .listManiacWMatchBalance
        .insertListFromListStrings(listStringsWListManiacWCheckbox);
    getDataForNamedParameterNamedStreamWState
        .listStringsWListManiacWCheckbox
        .listModel
        .clear();
    _updateEEMatchBalanceEEWhereItsLikeMutableAndStreamNotificationIsPossibleEEFromMatchBalanceEEParameterTempCacheService
        .updateMatchBalanceWhereItsLikeMutableAndStreamNotificationIsPossibleFromMatchBalanceParameterTempCacheService(clone);
  }

  @override
  void closeBottomSheet() {
    final isEmpty = getDataForNamedParameterNamedStreamWState
        .listStringsWListManiacWCheckbox
        .listModel
        .isEmpty;
    if(isEmpty) {
      _firstQQCloseBottomSheetQQIsEmpty();
      return;
    }
    getDataForNamedParameterNamedStreamWState
        .listStringsWListManiacWCheckbox
        .listModel
        .clear();
  }

  Future<String> _firstQQInitQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }

  void _firstQQDeleteItemToListViewQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(ExceptionController exceptionController) {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQQDeleteItemToListViewQQIsWhereEqualsFromNameParameterSelectedItemManiacWMatchBalance(MatchBalance matchBalance, ManiacWMatchBalance itemManiacWMatchBalance) {
    getDataForNamedParameterNamedStreamWState.selectedItemManiacWMatchBalance = "";
    final clone = matchBalance.getClone;
    clone
        .listManiacWMatchBalance
        .deleteFromUniqueIdByModelParameterListModel(itemManiacWMatchBalance.uniqueId);
    _updateEEManiacWMatchBalanceEEWhereStreamNotificationIsPossibleEEFromManiacWMatchBalanceEEParameterTempCacheService
        .updateManiacWMatchBalanceWhereStreamNotificationIsPossibleFromManiacWMatchBalanceParameterTempCacheService(ManiacWMatchBalance("",0,0,ListMapsWMatchBalance(List.empty(growable: true)),ListManiacPerkWMatchBalance(List.empty(growable: true)),ListSurvivorPerkWMatchBalance(List.empty(growable: true))));
    _updateEEMatchBalanceEEWhereItsLikeMutableAndStreamNotificationIsPossibleEEFromMatchBalanceEEParameterTempCacheService
        .updateMatchBalanceWhereItsLikeMutableAndStreamNotificationIsPossibleFromMatchBalanceParameterTempCacheService(clone);
  }

  void _firstQQAddItemsBottomSheetQQIsEmpty() {}

  void _firstQQCloseBottomSheetQQIsEmpty() {}

  void _firstQQAddItemsBottomSheetQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(ExceptionController exceptionController) {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }
}