import 'package:common_topdbd/model/maps_w_match_balance/list_maps_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/maps_w_match_balance.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_list_strings_ee_where_named_ee_from_named_ee_parameters_temp_cache_service_and_stream_subscription/start_listening_and_cancel_listening_ee_list_strings_ee_where_w_list_maps_w_checkbox_ee_from_callback_ee_parameters_temp_cache_service_and_stream_subscription.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_match_balance_ee_where_its_like_mutable_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_match_balance_ee_where_its_like_mutable_ee_from_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_list_maps_w_match_balance_vm/data_for_settings_list_maps_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_maps_w_match_balance_vm/i_settings_list_maps_w_match_balance_view_model.dart';

@immutable
final class TestSettingsListMapsWMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsListMapsWMatchBalanceView,
    DefaultStreamWState<DataForSettingsListMapsWMatchBalanceView>> implements ISettingsListMapsWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService =
  GetEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService();
  final _updateEEMatchBalanceEEWhereItsLikeMutableEEFromMatchBalanceEEParameterTempCacheService =
  UpdateEEMatchBalanceEEWhereItsLikeMutableEEFromMatchBalanceEEParameterTempCacheService();
  final _startListeningAndCancelListeningEEListStringsEEWhereWListMapsWCheckboxEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEListStringsEEWhereWListMapsWCheckboxEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription();

  // NamedUtility

  TestSettingsListMapsWMatchBalanceViewModel(String nameByManiacWMatchBalance,ListMapsWMatchBalance listMapsWMatchBalance)
      : super(DefaultStreamWState(DataForSettingsListMapsWMatchBalanceView(true,nameByManiacWMatchBalance,ListStrings(List.empty(growable: true)),true,false,listMapsWMatchBalance)));

  @override
  void dispose() {
    _startListeningAndCancelListeningEEListStringsEEWhereWListMapsWCheckboxEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .cancelListeningListStringsWhereWListMapsWCheckboxParameterStreamSubscription();
    super.dispose();
  }

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
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
    final parameter = getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .parameter
        !.getClone;
    parameter
        .listManiacWMatchBalance
        .insertMapsWMatchBalanceFromNameByManiacWMatchBalanceAndListStringsParameterListModel(nameByManiacWMatchBalance,listStringsWListMapsWCheckbox);
    _updateEEMatchBalanceEEWhereItsLikeMutableEEFromMatchBalanceEEParameterTempCacheService
        .updateMatchBalanceWhereItsLikeMutableFromMatchBalanceParameterTempCacheService(parameter);
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
    final parameter = getMatchBalanceWhereItsLikeMutableParameterTempCacheService.parameter!.getClone;
    parameter
        .listManiacWMatchBalance
        .deleteMapsWMatchBalanceFromNameByManiacWMatchBalanceAndMapsWMatchBalanceParameterListModel(nameByManiacWMatchBalance,itemMapsWMatchBalance);
    _updateEEMatchBalanceEEWhereItsLikeMutableEEFromMatchBalanceEEParameterTempCacheService
        .updateMatchBalanceWhereItsLikeMutableFromMatchBalanceParameterTempCacheService(parameter);
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
}