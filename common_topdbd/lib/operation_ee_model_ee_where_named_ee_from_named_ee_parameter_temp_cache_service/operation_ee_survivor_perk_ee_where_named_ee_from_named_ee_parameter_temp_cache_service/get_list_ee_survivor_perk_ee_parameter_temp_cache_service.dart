import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class GetListEESurvivorPerkEEParameterTempCacheService<T extends SurvivorPerk,Y extends ListSurvivorPerk<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<Y> getListSurvivorPerkParameterTempCacheService() {
    try {
      final listSurvivorPerk = tempCacheService.getObjectFromKeyTempCacheParameterTempCache(KeysTempCacheServiceUtility.survivorPerkQListSurvivorPerk) as Y;
      return Result<Y>.success(listSurvivorPerk);
    } on LocalException catch(e) {
      return Result<Y>.exception(e);
    } catch(e) {
      return Result<Y>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}