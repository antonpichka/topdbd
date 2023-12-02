import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_strings_ee_where_name_country_by_country_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_strings_ee_where_username_by_discord_user_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/auth_drawer_vm/data_for_auth_drawer_view.dart';
import 'package:web_topdbd/named_vm/auth_drawer_vm/i_auth_drawer_view_model.dart';

@immutable
final class TestAuthDrawerViewModel extends BaseNamedViewModel<DataForAuthDrawerView,DefaultStreamWState<DataForAuthDrawerView>>
    implements IAuthDrawerViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEStringsEEWhereUsernameByDiscordUserEEParameterTempCacheService =
  GetEEStringsEEWhereUsernameByDiscordUserEEParameterTempCacheService();
  final _getEEStringsEEWhereNameCountryByCountryEEParameterTempCacheService =
  GetEEStringsEEWhereNameCountryByCountryEEParameterTempCacheService();

  // NamedUtility

  TestAuthDrawerViewModel() : super(DefaultStreamWState(DataForAuthDrawerView(true,"","")));

  @override
  Future<String> init() async {
    final getStringsWhereUsernameByDiscordUserParameterTempCacheService = _getEEStringsEEWhereUsernameByDiscordUserEEParameterTempCacheService
        .getStringsWhereUsernameByDiscordUserParameterTempCacheService();
    if(getStringsWhereUsernameByDiscordUserParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetStringsWhereUsernameByDiscordUserParameterTempCacheService(getStringsWhereUsernameByDiscordUserParameterTempCacheService.exceptionController);
    }
    final getStringsWhereNameCountryByCountryParameterTempCacheService = _getEEStringsEEWhereNameCountryByCountryEEParameterTempCacheService
        .getStringsWhereNameCountryByCountryParameterTempCacheService();
    if(getStringsWhereNameCountryByCountryParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetStringsWhereNameCountryByCountryParameterTempCacheService(getStringsWhereNameCountryByCountryParameterTempCacheService.exceptionController);
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.usernameByDiscordUser = getStringsWhereUsernameByDiscordUserParameterTempCacheService.parameter?.field ?? "";
    getDataForNamedParameterNamedStreamWState.nameCountryByCountry = getStringsWhereNameCountryByCountryParameterTempCacheService.parameter?.field ?? "";
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void clickOnMyUser(Function(String) callback) {
    // TODO: implement clickOnMyUser
  }

  @override
  void download() {
    // TODO: implement download
  }

  @override
  void logout(Function() callback) {

    callback();
  }

  Future<String> _firstQQInitQQGetStringsWhereUsernameByDiscordUserParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return exceptionController.getKeyParameterException;
  }

  Future<String> _firstQQInitQQGetStringsWhereNameCountryByCountryParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return exceptionController.getKeyParameterException;
  }
}