import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_ints_ee_where_named_ee_from_named_ee_parameters_temp_cache_service_and_stream_subscription/start_listening_and_cancel_listening_ee_ints_ee_where_number_of_rounds_by_match_balance_ee_from_callback_ee_parameters_temp_cache_service_and_stream_subscription.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_match_balance_ee_where_its_like_mutable_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_match_balance_ee_from_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service_and_stream_subscription/start_listening_and_cancel_listening_ee_match_balance_ee_where_its_like_mutable_ee_from_callback_ee_parameters_temp_cache_service_and_stream_subscription.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_save_changes_to_match_balance_vm/data_for_settings_save_changes_to_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_save_changes_to_match_balance_vm/i_settings_save_changes_to_match_balance_view_model.dart';

@immutable
final class TestSettingsSaveChangesToMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsSaveChangesToMatchBalanceView,
    DefaultStreamWState<DataForSettingsSaveChangesToMatchBalanceView>> implements ISettingsSaveChangesToMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEMatchBalanceEEParameterTempCacheService =
  GetEEMatchBalanceEEParameterTempCacheService();
  final _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService =
  GetEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService();
  final _updateEEMatchBalanceEEFromMatchBalanceEEParameterTempCacheService =
  UpdateEEMatchBalanceEEFromMatchBalanceEEParameterTempCacheService();
  final _startListeningAndCancelListeningEEIntsEEWhereNumberOfRoundsByMatchBalanceEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEIntsEEWhereNumberOfRoundsByMatchBalanceEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription();
  final _startListeningAndCancelListeningEEMatchBalanceEEWhereItsLikeMutableEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEMatchBalanceEEWhereItsLikeMutableEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription();

  // NamedUtility

  TestSettingsSaveChangesToMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForSettingsSaveChangesToMatchBalanceView(true,MatchBalance(0,0,ListManiacWMatchBalance(List.empty(growable: true))),MatchBalance(0,0,ListManiacWMatchBalance(List.empty(growable: true))),"")));

  @override
  void dispose() {
    _startListeningAndCancelListeningEEIntsEEWhereNumberOfRoundsByMatchBalanceEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .cancelListeningIntsWhereNumberOfRoundsByMatchBalanceParameterStreamSubscription();
    _startListeningAndCancelListeningEEMatchBalanceEEWhereItsLikeMutableEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .cancelListeningMatchBalanceWhereItsLikeMutableParameterStreamSubscription();
    super.dispose();
  }

  @override
  Future<String> init() async {
    final getMatchBalanceParameterTempCacheService = _getEEMatchBalanceEEParameterTempCacheService
        .getMatchBalanceParameterTempCacheService();
    if(getMatchBalanceParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetMatchBalanceParameterTempCacheService(getMatchBalanceParameterTempCacheService.exceptionController);
    }
    final getMatchBalanceWhereItsLikeMutableParameterTempCacheService = _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService
        .getMatchBalanceWhereItsLikeMutableParameterTempCacheService();
    if(getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(getMatchBalanceWhereItsLikeMutableParameterTempCacheService.exceptionController);
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.matchBalance = getMatchBalanceParameterTempCacheService.parameter!.getClone;
    getDataForNamedParameterNamedStreamWState.matchBalanceWItsLikeMutable = getMatchBalanceWhereItsLikeMutableParameterTempCacheService.parameter!.getClone;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void listeningTempCacheService() {
    _startListeningAndCancelListeningEEIntsEEWhereNumberOfRoundsByMatchBalanceEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .startListeningIntsWhereNumberOfRoundsByMatchBalanceFromCallbackParametersTempCacheServiceAndStreamSubscription((p0) {
          getDataForNamedParameterNamedStreamWState.setFromNumberOfRoundsByMatchBalanceParameterMatchBalanceWItsLikeMutable(p0.parameter?.field ?? 0);
          notifyStreamDataForNamedParameterNamedStreamWState();
        });
    _startListeningAndCancelListeningEEMatchBalanceEEWhereItsLikeMutableEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .startListeningMatchBalanceWhereItsLikeMutableFromCallbackParametersTempCacheServiceAndStreamSubscription((p0) {
          getDataForNamedParameterNamedStreamWState.matchBalanceWItsLikeMutable = p0.parameter!.getClone;
          notifyStreamDataForNamedParameterNamedStreamWState();
        });
  }

  @override
  void onPressedSaveChanges(Function() callbackSuccess, Function(String) callbackException) {
    if(getDataForNamedParameterNamedStreamWState.isLoading) {
      return;
    }
    getDataForNamedParameterNamedStreamWState.isLoading = true;
    notifyStreamDataForNamedParameterNamedStreamWState();
    final matchBalanceWItsLikeMutable = getDataForNamedParameterNamedStreamWState.matchBalanceWItsLikeMutable;
    final isWhereEvenWLessThanThreeParameterNumberOfRounds = matchBalanceWItsLikeMutable
        .isWhereEvenWLessThanThreeParameterNumberOfRounds();
    if(isWhereEvenWLessThanThreeParameterNumberOfRounds) {
      _firstQQOnPressedSaveChangesQQIsWhereEvenWLessThanThreeParameterNumberOfRounds(callbackException);
      return;
    }
    final isWhereEvenWLessThanSevenParameterListManiacWMatchBalance = matchBalanceWItsLikeMutable
        .isWhereEvenWLessThanSevenParameterListManiacWMatchBalance();
    if(isWhereEvenWLessThanSevenParameterListManiacWMatchBalance) {
      _firstQQOnPressedSaveChangesQQIsWhereEvenWLessThanSevenParameterListManiacWMatchBalance(callbackException);
      return;
    }
    final isWhereDifferenceBetweenManiacWNumberOfRoundsLessThanFourParametersTwo = matchBalanceWItsLikeMutable
        .isWhereDifferenceBetweenManiacWNumberOfRoundsLessThanFourParametersTwo();
    if(isWhereDifferenceBetweenManiacWNumberOfRoundsLessThanFourParametersTwo) {
      _firstQQOnPressedSaveChangesQQIsWhereDifferenceBetweenManiacWNumberOfRoundsLessThanFourParametersTwo(callbackException);
      return;
    }
    final getExceptionInStringWhereNoCorrectDataParameterListManiacWMatchBalance = matchBalanceWItsLikeMutable
        .getExceptionInStringWhereNoCorrectDataParameterListManiacWMatchBalance;
    final isNotEmpty = getExceptionInStringWhereNoCorrectDataParameterListManiacWMatchBalance.isNotEmpty;
    if(isNotEmpty) {
      _firstQQOnPressedSaveChangesQQIsNotEmpty(getExceptionInStringWhereNoCorrectDataParameterListManiacWMatchBalance);
      return;
    }
    /// UpdateMatchBalanceFromMatchBalanceParameterFirebaseFirestoreService
    _updateEEMatchBalanceEEFromMatchBalanceEEParameterTempCacheService
        .updateMatchBalanceFromMatchBalanceParameterTempCacheService(matchBalanceWItsLikeMutable.getClone);
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.setMatchBalanceParametersMatchBalanceAndMatchBalanceWItsLikeMutable();
    getDataForNamedParameterNamedStreamWState.exceptionInString = "";
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackSuccess();
  }

  Future<String> _firstQQInitQQGetMatchBalanceParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQQInitQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }

  void _firstQQOnPressedSaveChangesQQIsWhereEvenWLessThanThreeParameterNumberOfRounds(Function(String p1) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException("The number of rounds must be at least 3, and must be odd");
  }

  void _firstQQOnPressedSaveChangesQQIsWhereEvenWLessThanSevenParameterListManiacWMatchBalance(Function(String p1) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException("The number of maniacs must be at least 7, and must be odd");
  }

  void _firstQQOnPressedSaveChangesQQIsWhereDifferenceBetweenManiacWNumberOfRoundsLessThanFourParametersTwo(Function(String p1) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException("The difference in the length of the list of maniacs and the number of rounds should be 4. For example: 3 rounds and 7 maniacs");
  }

  void _firstQQOnPressedSaveChangesQQIsNotEmpty(String getExceptionInStringWhereNoCorrectDataParameterListManiacWMatchBalance) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.exceptionInString = getExceptionInStringWhereNoCorrectDataParameterListManiacWMatchBalance;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }
}
