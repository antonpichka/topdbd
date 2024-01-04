import 'dart:async';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class StartListeningAndCancelListeningEEListStringsEEWhereWListManiacPerkWCheckboxEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription<T extends Strings,Y extends ListStrings<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListeningListStringsWhereWListManiacPerkWCheckboxFromCallbackParametersTempCacheServiceAndStreamSubscription(Function(Result<Y>) callback) {
    streamSubscription = tempCacheService
        .getStreamFromKeyTempCacheParameterOne(KeysTempCacheServiceUtility.listStringsQQWListManiacPerkWCheckbox)
        .listen((event) {
          callback(Result.success(event as Y));
        });
  }

  void cancelListeningListStringsWhereWListManiacPerkWCheckboxParameterStreamSubscription() {
    streamSubscription?.cancel();
  }
}