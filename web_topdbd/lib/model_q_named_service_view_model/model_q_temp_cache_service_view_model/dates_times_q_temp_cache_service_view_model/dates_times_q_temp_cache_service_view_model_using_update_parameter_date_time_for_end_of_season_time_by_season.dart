import 'package:common_topdbd/model/dates_times/dates_times.dart';
import 'package:common_topdbd/model/dates_times/list_dates_times.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/i_update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/temp_cache_service.dart';

base class DatesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForEndOfSeasonTimeBySeason<T extends DatesTimes,Y extends ListDatesTimes<T>>
    implements IUpdateModelToNamedServiceParameterNamedDataSource<bool,DateTime>
{
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
      tempCacheService.insertOrUpdateObjectToTempCache(KeysTempCacheServiceUtility.datesTimesQEndOfSeasonTimeBySeason,parameter);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}