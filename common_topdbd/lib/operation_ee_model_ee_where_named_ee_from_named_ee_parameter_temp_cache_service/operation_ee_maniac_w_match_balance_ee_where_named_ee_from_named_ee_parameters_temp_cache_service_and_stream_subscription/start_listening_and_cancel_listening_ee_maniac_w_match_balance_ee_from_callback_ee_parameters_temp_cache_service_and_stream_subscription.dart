import 'dart:async';
import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class StartListeningAndCancelListeningEEManiacWMatchBalanceEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription<T extends ManiacWMatchBalance,Y extends ListManiacWMatchBalance<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListeningManiacWMatchBalanceFromCallbackParametersTempCacheServiceAndStreamSubscription(Function(Result<T>) callback) {
    streamSubscription = tempCacheService
        .getStreamFromKeyTempCacheParameterOne(KeysTempCacheServiceUtility.maniacWMatchBalance)
        .listen((event) {
          callback(Result.success(event as T));
        });
  }

  void cancelListeningManiacWMatchBalanceParameterStreamSubscription() {
    streamSubscription?.cancel();
  }
}