import 'package:common_topdbd/model/survivor_perk_w_match_balance/list_survivor_perk_w_match_balance.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/survivor_perk_w_match_balance.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_list_strings_ee_where_named_ee_from_named_ee_parameters_temp_cache_service_and_stream_subscription/start_listening_and_cancel_listening_ee_list_strings_ee_where_w_list_survivor_perk_w_checkbox_ee_from_callback_ee_parameters_temp_cache_service_and_stream_subscription.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_maniac_w_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_maniac_w_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_match_balance_ee_where_its_like_mutable_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_match_balance_ee_where_its_like_mutable_and_stream_notification_is_possible_ee_from_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_list_survivor_perks_w_match_balance_vm/data_for_settings_list_survivor_perks_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_survivor_perks_w_match_balance_vm/i_settings_list_survivor_perks_w_match_balance_view_model.dart';

@immutable
final class TestSettingsListSurvivorPerksWMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsListSurvivorPerksWMatchBalanceView,
    DefaultStreamWState<DataForSettingsListSurvivorPerksWMatchBalanceView>> implements ISettingsListSurvivorPerksWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEManiacWMatchBalanceEEParameterTempCacheService =
  GetEEManiacWMatchBalanceEEParameterTempCacheService();
  final _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService =
  GetEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService();
  final _updateEEMatchBalanceEEWhereItsLikeMutableAndStreamNotificationIsPossibleEEFromMatchBalanceEEParameterTempCacheService =
  UpdateEEMatchBalanceEEWhereItsLikeMutableAndStreamNotificationIsPossibleEEFromMatchBalanceEEParameterTempCacheService();
  final _startListeningAndCancelListeningEEListStringsEEWhereWListSurvivorPerkWCheckboxEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEListStringsEEWhereWListSurvivorPerkWCheckboxEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription();

  // NamedUtility

  TestSettingsListSurvivorPerksWMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForSettingsListSurvivorPerksWMatchBalanceView(true,"",ListSurvivorPerkWMatchBalance(List.empty(growable: true)),ListStrings(List.empty(growable: true)),true,false)));

  @override
  void dispose() {
    _startListeningAndCancelListeningEEListStringsEEWhereWListSurvivorPerkWCheckboxEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .cancelListeningListStringsWhereWListSurvivorPerkWCheckboxParameterStreamSubscription();
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
    getDataForNamedParameterNamedStreamWState.listSurvivorPerkWMatchBalance = getManiacWMatchBalanceParameterTempCacheService.parameter!.listSurvivorPerkWMatchBalance.getClone;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void listeningTempCacheService() {
    _startListeningAndCancelListeningEEListStringsEEWhereWListSurvivorPerkWCheckboxEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .startListeningListStringsWhereWListSurvivorPerkWCheckboxFromCallbackParametersTempCacheServiceAndStreamSubscription((p0) {
          getDataForNamedParameterNamedStreamWState.listStringsWListSurvivorPerkWCheckbox = p0.parameter!.getClone;
        });
  }

  @override
  void addItemsBottomSheet() {
    final isEmpty = getDataForNamedParameterNamedStreamWState
        .listStringsWListSurvivorPerkWCheckbox
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
    final listStringsWListSurvivorPerkWCheckbox = getDataForNamedParameterNamedStreamWState.listStringsWListSurvivorPerkWCheckbox;
    final parameter = getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .parameter
        !.getClone;
    parameter
        .listManiacWMatchBalance
        .insertSurvivorPerkWMatchBalanceFromNameByManiacWMatchBalanceAndListStringsParameterListModel(nameByManiacWMatchBalance,listStringsWListSurvivorPerkWCheckbox);
    _updateEEMatchBalanceEEWhereItsLikeMutableAndStreamNotificationIsPossibleEEFromMatchBalanceEEParameterTempCacheService
        .updateMatchBalanceWhereItsLikeMutableAndStreamNotificationIsPossibleFromMatchBalanceParameterTempCacheService(parameter);
    getDataForNamedParameterNamedStreamWState
        .insertListSurvivorPerkWMatchBalanceParametersTwo();
    getDataForNamedParameterNamedStreamWState
        .listStringsWListSurvivorPerkWCheckbox
        .listModel
        .clear();
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  @override
  void closeBottomSheet() {
    final isEmpty = getDataForNamedParameterNamedStreamWState
        .listStringsWListSurvivorPerkWCheckbox
        .listModel
        .isEmpty;
    if(isEmpty) {
      _firstQQCloseBottomSheetQQIsEmpty();
      return;
    }
    getDataForNamedParameterNamedStreamWState
        .listStringsWListSurvivorPerkWCheckbox
        .listModel
        .clear();
  }

  @override
  void deleteItemToListView(SurvivorPerkWMatchBalance itemSurvivorPerkWMatchBalance) {
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
    final parameter = getMatchBalanceWhereItsLikeMutableParameterTempCacheService.parameter!.getClone;
    parameter
        .listManiacWMatchBalance
        .deleteSurvivorPerkWMatchBalanceFromNameByManiacWMatchBalanceAndSurvivorPerkWMatchBalanceParameterListModel(nameByManiacWMatchBalance,itemSurvivorPerkWMatchBalance);
    _updateEEMatchBalanceEEWhereItsLikeMutableAndStreamNotificationIsPossibleEEFromMatchBalanceEEParameterTempCacheService
        .updateMatchBalanceWhereItsLikeMutableAndStreamNotificationIsPossibleFromMatchBalanceParameterTempCacheService(parameter);
    getDataForNamedParameterNamedStreamWState
        .listSurvivorPerkWMatchBalance
        .deleteFromUniqueIdByModelParameterListModel(itemSurvivorPerkWMatchBalance.uniqueId);
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

  Future<String> _firstQQInitQQGetManiacWMatchBalanceParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }

  void _firstQQCloseBottomSheetQQIsEmpty() {}

  void _firstQQAddItemsBottomSheetQQIsEmpty() {}

  void _firstQQAddItemsBottomSheetQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(ExceptionController exceptionController) {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQQDeleteItemToListViewQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(ExceptionController exceptionController) {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }
}
