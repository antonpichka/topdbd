import 'dart:async';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class StartListeningAndCancelListeningEEStringsEEWhereUniqueIdByUserEEFromKeyNameStreamAndCallbackEEParametersTempCacheServiceAndStreamSubscription<T extends Strings,Y extends ListStrings<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListeningStringsWhereUniqueIdByUserFromKeyNameStreamAndCallbackParametersTempCacheServiceAndStreamSubscription(String keyNameStream,Function(Result<T> resultStringsWhereUniqueIdByUser) callback) {
    streamSubscription = tempCacheService
        .getStreamObjectFromKeyNameStreamAndKeyTempCacheAndMillisecondsParametersTempCacheAndNameStreamWTempCacheWIsHaveYouReceivedTheLatestData(keyNameStream,KeysTempCacheServiceUtility.stringsQUniqueIdByUser)
        .listen((event) {
          callback(Result.success(event as T));
        });
  }

  void cancelListeningStringsWhereUniqueIdByUserParameterStreamSubscription() {
    streamSubscription?.cancel();
  }
}