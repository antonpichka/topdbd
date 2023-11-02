import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_bools_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_bools_ee_where_is_init_by_init_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_bools_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_bools_ee_where_is_init_by_init_ee_from_bools_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_exception_to_app_view/data_for_exception_to_app_view.dart';

@immutable
final class ExceptionToAppViewModel extends BaseNamedViewModel<DataForExceptionToAppView,DefaultStreamWState<DataForExceptionToAppView>> {
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEBoolsEEWhereIsInitByInitEEParameterTempCacheService =
  GetEEBoolsEEWhereIsInitByInitEEParameterTempCacheService();
  final _updateEEBoolsEEWhereIsInitByInitEEFromBoolsEEParameterTempCacheService =
  UpdateEEBoolsEEWhereIsInitByInitEEFromBoolsEEParameterTempCacheService();

  // NamedUtility

  ExceptionToAppViewModel() : super(DefaultStreamWState(DataForExceptionToAppView(false)));

  @override
  Future<String> init()
  async {
    final getBoolsWhereIsInitByInitParameterTempCacheService = _getEEBoolsEEWhereIsInitByInitEEParameterTempCacheService
        .getBoolsWhereIsInitByInitParameterTempCacheService();
    if(getBoolsWhereIsInitByInitParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetBoolsWhereIsInitByInitParameterTempCacheService(getBoolsWhereIsInitByInitParameterTempCacheService);
    }
    return KeysSuccessUtility.sUCCESS;
  }

  Future<String> _firstQQInitQQGetBoolsWhereIsInitByInitParameterTempCacheService(Result<Bools> getBoolsWhereIsInitByInitParameterTempCacheService)
  async {
    _updateEEBoolsEEWhereIsInitByInitEEFromBoolsEEParameterTempCacheService
        .updateBoolsWhereIsInitByInitFromBoolsParameterTempCacheService(const Bools(true));
    return getBoolsWhereIsInitByInitParameterTempCacheService.exceptionController.getKeyParameterException;
  }
}