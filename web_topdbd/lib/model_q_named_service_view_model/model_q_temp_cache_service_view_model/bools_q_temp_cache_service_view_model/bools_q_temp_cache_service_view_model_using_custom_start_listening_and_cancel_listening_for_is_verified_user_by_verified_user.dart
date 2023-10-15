import 'dart:async';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class BoolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsVerifiedUserByVerifiedUser<T extends Bools,Y extends ListBools<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListening(String keyNameStream,Function(Result<T> resultBoolsForIsVerifiedUserByVerifiedUser) callback) {
    streamSubscription = tempCacheService
        .getStreamObjectFromTempCache(keyNameStream,KeysTempCacheServiceUtility.boolsQIsVerifiedUserByVerifiedUser)
        .listen((event) {
          final isVerifiedUserByVerifiedUser = event as bool;
          callback(Result.success(Bools(isVerifiedUserByVerifiedUser) as T));
        });
  }

  void cancelListening() {
    streamSubscription?.cancel();
  }
}