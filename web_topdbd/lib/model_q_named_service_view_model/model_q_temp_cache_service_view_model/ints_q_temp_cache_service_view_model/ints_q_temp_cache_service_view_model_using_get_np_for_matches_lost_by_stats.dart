import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/ints.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_ints.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/i_get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/temp_cache_service.dart';

base class IntsQTempCacheServiceViewModelUsingGetNPForMatchesLostByStats<T extends Ints,Y extends ListInts<T>>
    implements IGetModelFromNamedServiceNPDataSource<T>
{
  @protected
  final tempCacheService = TempCacheService.instance;

  Future<T> getIntsFromTempCacheServiceNPDS() {
    return getModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceNPDS()
  async {
    try {
      final matchesLostByStats = tempCacheService.getObjectFromTempCache(KeysTempCacheServiceUtility.intsQMatchesLostByStats) as int;
      return Ints.success(matchesLostByStats) as T;
    } on LocalException catch(e) {
      return Ints.exception(e) as T;
    } catch(e) {
      return Ints.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}