import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class SurvivorPerkQTempCacheServiceViewModelUsingGetListNP<T extends SurvivorPerk,Y extends ListSurvivorPerk<T>> extends BaseGetListModelFromNamedServiceNPDataSource<Y> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Future<Result<Y>> getListSurvivorPerkFromTempCacheServiceNPDS() {
    return getListModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<Result<Y>> getListModelFromNamedServiceNPDS()
  async {
    try {
      final listSurvivorPerk = tempCacheService.getObjectFromTempCache(KeysTempCacheServiceUtility.survivorPerkQListSurvivorPerk) as Y;
      return Result<Y>.success(listSurvivorPerk);
    } on LocalException catch(e) {
      return Result<Y>.exception(e);
    } catch(e) {
      return Result<Y>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}