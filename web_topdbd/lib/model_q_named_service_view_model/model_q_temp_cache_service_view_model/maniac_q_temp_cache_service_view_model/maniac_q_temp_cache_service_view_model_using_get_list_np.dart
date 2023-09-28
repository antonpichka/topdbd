import 'package:common_topdbd/model/maniac/list_maniac.dart';
import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ManiacQTempCacheServiceViewModelUsingGetListNP<T extends Maniac,Y extends ListManiac<T>> extends BaseGetListModelFromNamedServiceNPDataSource<Y> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Future<Result<Y>> getListManiacFromTempCacheServiceNPDS() {
    return getListModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<Result<Y>> getListModelFromNamedServiceNPDS()
  async {
    try {
      final listManiac = tempCacheService.getObjectFromTempCache(KeysTempCacheServiceUtility.maniacQListManiac) as Y;
      return Result<Y>.success(listManiac);
    } on LocalException catch(e) {
      return Result<Y>.exception(e);
    } catch(e) {
      return Result<Y>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}