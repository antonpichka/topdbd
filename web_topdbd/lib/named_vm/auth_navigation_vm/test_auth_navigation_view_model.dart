import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_bools_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_bools_ee_where_is_admin_by_role_user_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/auth_navigation_vm/data_for_auth_navigation_view.dart';
import 'package:web_topdbd/named_vm/auth_navigation_vm/i_auth_navigation_view_model.dart';

@immutable
final class TestAuthNavigationViewModel extends BaseNamedViewModel<DataForAuthNavigationView,DefaultStreamWState<DataForAuthNavigationView>>
    implements IAuthNavigationViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEBoolsEEWhereIsAdminByRoleUserEEParameterTempCacheService =
  GetEEBoolsEEWhereIsAdminByRoleUserEEParameterTempCacheService();

  // NamedUtility

  TestAuthNavigationViewModel() : super(DefaultStreamWState(DataForAuthNavigationView(true,false)));

  @override
  Future<String> init() async {
    final getBoolsWhereIsAdminByRoleUserParameterTempCacheService = _getEEBoolsEEWhereIsAdminByRoleUserEEParameterTempCacheService
        .getBoolsWhereIsAdminByRoleUserParameterTempCacheService();
    if(getBoolsWhereIsAdminByRoleUserParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetBoolsWhereIsAdminByRoleUserParameterTempCacheService(getBoolsWhereIsAdminByRoleUserParameterTempCacheService.exceptionController);
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.isAdminByRoleUser = getBoolsWhereIsAdminByRoleUserParameterTempCacheService.parameter?.isField ?? false;
    return KeysSuccessUtility.sUCCESS;
  }

  Future<String> _firstQQInitQQGetBoolsWhereIsAdminByRoleUserParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }

}