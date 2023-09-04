import 'dart:async';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class StringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser<T extends Strings,Y extends ListStrings<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListening(Function(Result<T> resultStrings) callback) {
    streamSubscription = tempCacheService
        .getStreamObjectFromTempCache(KeysTempCacheServiceUtility.stringsQUniqueIdByUser)
        .listen((event) {
          final uniqueIdByUser = event as String;
          callback(Result<T>.success(Strings(uniqueIdByUser) as T));
        });
  }

  void cancelListening() {
    streamSubscription?.cancel();
  }
}