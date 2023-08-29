import 'dart:async';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/temp_cache_service.dart';

base class StringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser<T extends Strings,Y extends ListStrings<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListening(Function(T strings) callback) {
    streamSubscription = tempCacheService
        .getStreamObjectFromTempCache(KeysTempCacheServiceUtility.stringsQUniqueIdByUser)
        .listen((event) {
          final uniqueIdByUser = event as String;
          callback(Strings.success(uniqueIdByUser) as T);
        });
  }

  void cancelListening() {
    streamSubscription?.cancel();
  }
}