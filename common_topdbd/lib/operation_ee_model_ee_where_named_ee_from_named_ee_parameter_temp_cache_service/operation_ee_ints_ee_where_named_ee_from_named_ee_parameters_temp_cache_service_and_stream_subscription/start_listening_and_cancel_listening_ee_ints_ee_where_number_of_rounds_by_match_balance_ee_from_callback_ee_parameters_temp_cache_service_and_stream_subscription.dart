import 'dart:async';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class StartListeningAndCancelListeningEEIntsEEWhereNumberOfRoundsByMatchBalanceEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription<T extends Ints,Y extends ListInts<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListeningIntsWhereNumberOfRoundsByMatchBalanceFromCallbackParametersTempCacheServiceAndStreamSubscription(Function(Result<T>) callback) {
    streamSubscription = tempCacheService
        .getStreamFromKeyTempCacheParameterOne(KeysTempCacheServiceUtility.intsQQNumberOfRoundsByMatchBalance)
        .listen((event) {
          callback(Result.success(event as T));
        });
  }

  void cancelListeningIntsWhereNumberOfRoundsByMatchBalanceParameterStreamSubscription() {
    streamSubscription?.cancel();
  }
}