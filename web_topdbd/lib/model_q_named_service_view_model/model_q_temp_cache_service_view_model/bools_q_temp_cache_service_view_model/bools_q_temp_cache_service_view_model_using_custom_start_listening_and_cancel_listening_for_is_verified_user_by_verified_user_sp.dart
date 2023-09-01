import 'dart:async';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class BoolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsVerifiedUserByVerifiedUserSP<T extends Bools,Y extends ListBools<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListening(Function(T bools) callback) {
    streamSubscription = tempCacheService
        .getStreamObjectFromTempCache(KeysTempCacheServiceUtility.boolsQIsVerifiedUserByVerifiedUserSP)
        .listen((event) {
          final isVerifiedUserByVerifiedUserSP = event as bool;
          callback(Bools.success(isVerifiedUserByVerifiedUserSP) as T);
        });
  }

  void cancelListening() {
    streamSubscription?.cancel();
  }
}