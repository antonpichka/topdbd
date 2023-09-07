import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class MapsQTempCacheServiceViewModelUsingGetListNP<T extends Maps,Y extends ListMaps<T>> extends BaseGetListModelFromNamedServiceNPDataSource<Y> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Future<Result<Y>> getListMapsFromTempCacheServiceNPDS() {
    return getListModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<Result<Y>> getListModelFromNamedServiceNPDS()
  async {
    try {
      final listMaps = tempCacheService.getObjectFromTempCache(KeysTempCacheServiceUtility.mapsQListMaps) as Y;
      return Result<Y>.success(listMaps);
    } on LocalException catch(e) {
      return Result<Y>.exception(e);
    } catch(e) {
      return Result<Y>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}