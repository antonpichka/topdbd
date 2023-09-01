import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class StringsQTempCacheServiceViewModelUsingUpdateParameterStringForIpByIPAddress<T extends Strings,Y extends ListStrings<T>> extends BaseUpdateModelToNamedServiceParameterNamedDataSource<bool,String> {
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
      tempCacheService.insertOrUpdateObjectToTempCache(KeysTempCacheServiceUtility.stringsQIpByIPAddress,parameter);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }

}