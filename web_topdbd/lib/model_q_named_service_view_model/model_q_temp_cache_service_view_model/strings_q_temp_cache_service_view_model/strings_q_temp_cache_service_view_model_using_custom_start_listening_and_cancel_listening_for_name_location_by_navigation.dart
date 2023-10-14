import 'dart:async';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class StringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForNameLocationByNavigation<T extends Strings,Y extends ListStrings<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListening(String keyNameStream,Function(Result<T> resultStrings) callback) {
    streamSubscription = tempCacheService
        .getStreamObjectFromTempCache(keyNameStream,KeysTempCacheServiceUtility.stringsQNameLocationByNavigation)
        .listen((event) {
          final nameLocationByNavigation = event as String;
          callback(Result<T>.success(Strings(nameLocationByNavigation) as T));
        });
  }

  void cancelListening() {
    streamSubscription?.cancel();
  }
}