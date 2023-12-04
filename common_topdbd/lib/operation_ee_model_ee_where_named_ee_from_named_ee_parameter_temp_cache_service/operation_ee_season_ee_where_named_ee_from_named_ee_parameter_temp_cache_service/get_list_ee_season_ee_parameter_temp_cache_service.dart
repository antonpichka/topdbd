import 'package:common_topdbd/model/season/list_season.dart';
import 'package:common_topdbd/model/season/season.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class GetListEESeasonEEParameterTempCacheService<T extends Season,Y extends ListSeason<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<Y> getListSeasonParameterTempCacheService() {
    try {
      final listSeason = tempCacheService.getFromKeyTempCacheParameterTempCache(KeysTempCacheServiceUtility.listSeason) as Y;
      return Result<Y>.success(listSeason);
    } on LocalException catch(e) {
      return Result<Y>.exception(e);
    } catch(e) {
      return Result<Y>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}