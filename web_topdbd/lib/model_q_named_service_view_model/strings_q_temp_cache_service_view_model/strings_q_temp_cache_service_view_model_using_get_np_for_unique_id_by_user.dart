import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/i_get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/model_q_named_service_view_model/named_service/temp_cache_service.dart';

base class StringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser<T extends Strings,Y extends ListStrings<T>>
    implements IGetModelFromNamedServiceNPDataSource<T>
{
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
      final uniqueIdByUser = tempCacheService.getObjectFromTempCache(KeysTempCacheServiceUtility.stringsQUniqueIdByUser) as String;
      return Strings.success(uniqueIdByUser) as T;
    } on LocalException catch(e) {
      return Strings.exception(e) as T;
    } catch(e) {
      return Strings.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}