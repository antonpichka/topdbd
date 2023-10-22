import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_exception_to_app_view/data_for_exception_to_app_view.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model_using_get_np_for_is_init_by_init.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model_using_update_parameter_bool_for_is_init_by_init.dart';

@immutable
final class ExceptionToAppViewModel extends BaseNamedViewModel<DataForExceptionToAppView,DefaultStreamWState<DataForExceptionToAppView>> {
  // OperationResultModel(InNamedWhereNamed)[FromNamed]ParameterNamedService
  // NamedUtility

  final _boolsQTempCacheServiceViewModelUsingGetNPForIsInitByInit =
  BoolsQTempCacheServiceViewModelUsingGetNPForIsInitByInit();
  final _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsInitByInit =
  BoolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsInitByInit();

  ExceptionToAppViewModel() : super(DefaultStreamWState(DataForExceptionToAppView(false)));

  @override
  Future<String> init()
  async {
    final resultBoolsForIsInitByInit = await _boolsQTempCacheServiceViewModelUsingGetNPForIsInitByInit
        .getBoolsFromTempCacheServiceNPDS();
    if(resultBoolsForIsInitByInit
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstQInitQGetBoolsFromTempCacheServiceNPDS(resultBoolsForIsInitByInit);
    }
    return KeysSuccessUtility.sUCCESS;
  }

  Future<String> _firstQInitQGetBoolsFromTempCacheServiceNPDS(Result<Bools> resultBoolsForIsInitByInit)
  async {
    await _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsInitByInit
        .updateBoolsToTempCacheServiceParameterBoolDS(true);
    return resultBoolsForIsInitByInit.exceptionController.getKeyParameterException;
  }
}