import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/data_for_login_view.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/initialized_stream_state_data_for_login_view/initialized_stream_state_data_for_login_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_login_view_q_there_is_stream_state_view_model/data_for_login_view_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/model_q_named_service_view_model/discord_user_q_http_client_service_view_model/discord_user_q_http_client_service_view_model_using_get_np_for_discord_auth.dart';
import 'package:web_topdbd/model_q_named_service_view_model/strings_q_asset_bundle_service_view_model/strings_q_asset_bundle_service_view_model_using_get_np_for_terms_of_use.dart';

final class LoginViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel
  final _stringsQAssetBundleServiceViewModelUsingGetNPForTermsOfUse =
  StringsQAssetBundleServiceViewModelUsingGetNPForTermsOfUse();
  final _discordUserQHttpClientServiceViewModelUsingGetNPForDiscordAuth =
  DiscordUserQHttpClientServiceViewModelUsingGetNPForDiscordAuth();

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForLoginViewQThereIsStreamStateViewModel =
  DataForLoginViewQThereIsStreamStateViewModel(InitializedStreamStateDataForLoginView());

  // NamedUtility

  @override
  void dispose() {
    _dataForLoginViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForLoginView?>? get getStreamDataForLoginView => _dataForLoginViewQThereIsStreamStateViewModel.getStreamDataForLoginView;
  DataForLoginView? get getDataForLoginView => _dataForLoginViewQThereIsStreamStateViewModel.getDataForLoginView;

  Future<String> initForLoginView()
  async {
    final resultStrings = await _stringsQAssetBundleServiceViewModelUsingGetNPForTermsOfUse
        .getStringsFromAssetBundleServiceNPDS();
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.exceptionController = resultStrings.exceptionController;
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.termsOfUse = resultStrings.field;
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForLoginView() {
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
  }

  void checkForLoginView(bool? isCheck) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isCheckAgreeTermsOfUse = isCheck;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
  }

  Future<void> signInWithDiscordForLoginView(Function() callbackSuccess,Function(String? messageException) callbackException)
  async {
    if(_dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading ?? false)
    {
      return;
    }
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = true;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    final resultDiscordUser = await _discordUserQHttpClientServiceViewModelUsingGetNPForDiscordAuth
        .getDiscordUserFromHttpClientServiceNPDS();
    if(resultDiscordUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _exceptionFirstBranchOneForSignInWithDiscordForLoginViewForGetDiscordUserFromHttpClientServiceNPDS(resultDiscordUser.exceptionController,callbackException);
      return;
    }

  }

  void _exceptionFirstBranchOneForSignInWithDiscordForLoginViewForGetDiscordUserFromHttpClientServiceNPDS(ExceptionController exceptionController, Function(String? messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(exceptionController.getKeyParameterException);
  }
}