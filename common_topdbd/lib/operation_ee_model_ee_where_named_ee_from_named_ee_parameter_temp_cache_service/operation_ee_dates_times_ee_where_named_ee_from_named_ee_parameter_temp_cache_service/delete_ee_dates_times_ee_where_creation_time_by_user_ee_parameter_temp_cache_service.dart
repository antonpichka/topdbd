import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class DeleteEEDatesTimesEEWhereCreationTimeByUserEEParameterTempCacheService<T extends DatesTimes,Y extends ListDatesTimes<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<bool> deleteDatesTimesWhereCreationTimeByUserParameterTempCacheService() {
    try {
      tempCacheService.deleteFromKeyTempCacheParameterTempCache(KeysTempCacheServiceUtility.datesTimesQQCreationTimeByUser);
      return Result<bool>.success(true);
    } on LocalException catch(e) {
      return Result<bool>.exception(e);
    } catch(e) {
      return Result<bool>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}