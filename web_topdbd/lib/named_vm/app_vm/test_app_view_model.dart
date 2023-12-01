import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameters_temp_cache_service_and_stream_subscription/start_listening_and_cancel_listening_ee_strings_ee_where_unique_id_by_user_ee_from_callback_ee_parameters_temp_cache_service_and_stream_subscription.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameters_temp_cache_service_and_stream_subscription/start_listening_and_cancel_listening_ee_strings_ee_where_username_by_discord_user_ee_from_callback_ee_parameters_temp_cache_service_and_stream_subscription.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/app_vm/data_for_app_view.dart';
import 'package:web_topdbd/named_vm/app_vm/i_app_view_model.dart';

@immutable
final class TestAppViewModel extends BaseNamedViewModel<DataForAppView,DefaultStreamWState<DataForAppView>>
    implements IAppViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _startListeningAndCancelListeningEEStringsEEWhereUniqueIdByUserEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEStringsEEWhereUniqueIdByUserEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription();
  final _startListeningAndCancelListeningEEStringsEEWhereUsernameByDiscordUserEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEStringsEEWhereUsernameByDiscordUserEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription();

  // NamedUtility

  TestAppViewModel() : super(DefaultStreamWState(DataForAppView(false,List<bool>.of([true,true]),false,"","","")));

  @override
  void dispose() {
    _startListeningAndCancelListeningEEStringsEEWhereUniqueIdByUserEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription.cancelListeningStringsWhereUniqueIdByUserParameterStreamSubscription();
    _startListeningAndCancelListeningEEStringsEEWhereUsernameByDiscordUserEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription.cancelListeningStringsWhereUsernameByDiscordUserParameterStreamSubscription();
    super.dispose();
  }

  @override
  Future<String> init() async {
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void listeningStreamsTempCacheService() {
    _startListeningAndCancelListeningEEStringsEEWhereUniqueIdByUserEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .startListeningStringsWhereUniqueIdByUserFromCallbackParametersTempCacheServiceAndStreamSubscription((Result<Strings> resultStrings)
    {
      getDataForNamedParameterNamedStreamWState.uniqueIdByUser = resultStrings.parameter?.field ?? "";
      notifyStreamDataForAppView();
    });
    _startListeningAndCancelListeningEEStringsEEWhereUsernameByDiscordUserEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .startListeningStringsWhereUsernameByDiscordUserFromCallbackParametersTempCacheServiceAndStreamSubscription((Result<Strings> resultStrings)
    {
      getDataForNamedParameterNamedStreamWState.usernameByDiscordUser = resultStrings.parameter?.field ?? "";
      notifyStreamDataForAppView();
    });
  }

  @override
  void listeningStreamsFirebaseFirestoreService() {
  }

  @override
  void setNameRoute(String rawNameRoute) {
    final stringWhereProcessedNameRouteFromRawNameRoute = AlgorithmsUtility.getStringWhereProcessedNameRouteFromRawNameRoute(rawNameRoute);
    getDataForNamedParameterNamedStreamWState.nameRoute = stringWhereProcessedNameRouteFromRawNameRoute;
  }

  @override
  void notifyStreamDataForAppView() {
    notifyStreamDataForNamedParameterNamedStreamWState();
  }
}