import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class DatesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForLastLoginTimeByLastLoginTimeUser<T extends DatesTimes,Y extends ListDatesTimes<T>> extends BaseUpdateModelToNamedServiceParameterNamedDataSource<bool,DateTime> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Future<Result<bool>> updateDatesTimesToTempCacheServiceParameterDateTimeDS(DateTime parameter) {
    return updateModelToNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<bool>> updateModelToNamedServiceParameterNamedDS(DateTime parameter)
  async {
    try {
      tempCacheService.insertOrUpdateObjectToTempCache(KeysTempCacheServiceUtility.datesTimesQLastLoginTimeByLastLoginTimeUser,parameter);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}