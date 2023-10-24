import 'dart:async';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class StartListeningAndCancelListeningEEBoolsEEWhereIsInitByInitEEFromKeyNameStreamAndCallbackEEParametersTempCacheServiceAndStreamSubscription<T extends Bools,Y extends ListBools<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListeningBoolsWhereIsInitByInitFromKeyNameStreamAndCallbackParametersTempCacheServiceAndStreamSubscription(String keyNameStream,Function(Result<T> resultBoolsWhereIsInitByInit) callback) {
    streamSubscription = tempCacheService
        .getStreamObjectFromKeyNameStreamAndKeyTempCacheAndMillisecondsParametersTempCacheAndNameStreamWTempCacheWIsHaveYouReceivedTheLatestData(keyNameStream,KeysTempCacheServiceUtility.boolsQIsInitByInit)
        .listen((event) {
          callback(Result.success(event as T));
        });
  }

  void cancelListeningBoolsWhereIsInitByInitParameterStreamSubscription() {
    streamSubscription?.cancel();
  }
}