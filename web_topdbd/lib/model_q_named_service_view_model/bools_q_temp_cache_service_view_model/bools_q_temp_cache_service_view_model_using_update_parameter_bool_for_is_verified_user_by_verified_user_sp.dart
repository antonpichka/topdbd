import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/bools.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bools.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/i_update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/model_q_named_service_view_model/named_service/temp_cache_service.dart';

base class BoolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsVerifiedUserByVerifiedUserSP<T extends Bools,Y extends ListBools<T>>
    implements IUpdateModelToNamedServiceParameterNamedDataSource<bool,bool>
{
  @protected
  final tempCacheService = TempCacheService.instance;

  Future<Result<bool>> updateBoolsToTempCacheServiceParameterBoolDS(bool parameter) {
    return updateModelToNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<bool>> updateModelToNamedServiceParameterNamedDS(bool parameter)
  async {
    try {
      tempCacheService.insertOrUpdateObjectToTempCache(KeysTempCacheServiceUtility.boolsQIsVerifiedUserByVerifiedUserSP,parameter);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }

}