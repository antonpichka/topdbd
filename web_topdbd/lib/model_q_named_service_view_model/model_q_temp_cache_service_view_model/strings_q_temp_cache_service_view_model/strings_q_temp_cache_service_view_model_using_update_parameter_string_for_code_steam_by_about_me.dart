import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/i_update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/temp_cache_service.dart';

base class StringsQTempCacheServiceViewModelUsingUpdateParameterStringForCodeSteamByAboutMe<T extends Strings,Y extends ListStrings<T>>
    implements IUpdateModelToNamedServiceParameterNamedDataSource<bool,String>
{
  @protected
  final tempCacheService = TempCacheService.instance;

  Future<Result<bool>> updateStringsToTempCacheServiceParameterStringDS(String parameter) {
    return updateModelToNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<bool>> updateModelToNamedServiceParameterNamedDS(String parameter)
  async {
    try {
      tempCacheService.insertOrUpdateObjectToTempCache(KeysTempCacheServiceUtility.stringsQCodeSteamByAboutMe,parameter);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }

}