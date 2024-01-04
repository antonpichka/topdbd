import 'dart:async';
import 'package:common_topdbd/model/match_balance/list_match_balance.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class StartListeningAndCancelListeningEEMatchBalanceEEWhereItsLikeMutableEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription<T extends MatchBalance,Y extends ListMatchBalance<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListeningMatchBalanceWhereItsLikeMutableFromCallbackParametersTempCacheServiceAndStreamSubscription(Function(Result<T>) callback) {
    streamSubscription = tempCacheService
        .getStreamFromKeyTempCacheParameterOne(KeysTempCacheServiceUtility.matchBalanceQQItsLikeMutable)
        .listen((event) {
          callback(Result.success(event as T));
        });
  }

  void cancelListeningMatchBalanceWhereItsLikeMutableParameterStreamSubscription() {
    streamSubscription?.cancel();
  }
}