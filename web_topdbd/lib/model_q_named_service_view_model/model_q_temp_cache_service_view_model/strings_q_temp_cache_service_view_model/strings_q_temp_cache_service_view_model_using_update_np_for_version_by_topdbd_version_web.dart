import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:common_topdbd/named_utility/ready_data_utility.dart';

@immutable
base class StringsQTempCacheServiceViewModelUsingUpdateNPForVersionByTOPDBDVersionWeb<T extends Strings,Y extends ListStrings<T>> extends BaseUpdateModelToNamedServiceNPDataSource<bool> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Future<Result<bool>> updateStringsToTempCacheServiceNPDS() {
    return updateModelToNamedServiceNPDS();
  }

  @protected
  @override
  Future<Result<bool>> updateModelToNamedServiceNPDS()
  async {
    try {
      tempCacheService.insertOrUpdateObjectToTempCache(KeysTempCacheServiceUtility.stringsQVersionByTOPDBDVersionWeb,ReadyDataUtility.getVersionByTOPDBDVersionWeb);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }

}