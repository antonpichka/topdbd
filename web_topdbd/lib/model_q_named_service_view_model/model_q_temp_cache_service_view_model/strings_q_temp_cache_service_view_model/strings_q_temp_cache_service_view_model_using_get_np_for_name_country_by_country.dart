import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class StringsQTempCacheServiceViewModelUsingGetNPForNameCountryByCountry<T extends Strings,Y extends ListStrings<T>> extends BaseGetModelFromNamedServiceNPDataSource<T> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Future<T> getStringsFromTempCacheServiceNPDS() {
    return getModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceNPDS()
  async {
    try {
      final nameCountryByCountry = tempCacheService.getObjectFromTempCache(KeysTempCacheServiceUtility.stringsQNameCountryByCountry) as String;
      return Strings.success(nameCountryByCountry) as T;
    } on LocalException catch(e) {
      return Strings.exception(e) as T;
    } catch(e) {
      return Strings.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}