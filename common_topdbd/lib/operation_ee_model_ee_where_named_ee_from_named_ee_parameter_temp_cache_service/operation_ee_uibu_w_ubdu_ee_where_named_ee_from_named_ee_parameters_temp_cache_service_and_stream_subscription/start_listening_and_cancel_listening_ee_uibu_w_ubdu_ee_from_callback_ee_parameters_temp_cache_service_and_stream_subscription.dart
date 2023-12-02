import 'dart:async';
import 'package:common_topdbd/model/uibu_w_ubdu/list_uibu_w_ubdu.dart';
import 'package:common_topdbd/model/uibu_w_ubdu/uibu_w_ubdu.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class StartListeningAndCancelListeningEEUIBUWUBDUEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription<T extends UIBUWUBDU,Y extends ListUIBUWUBDU<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListeningUIBUWUBDUFromCallbackParametersTempCacheServiceAndStreamSubscription(Function(Result<T>) callback) {
    streamSubscription = tempCacheService
        .getStreamFromKeyTempCacheParameterOne(KeysTempCacheServiceUtility.uIBUWUBDU)
        .listen((event) {
          callback(Result.success(event as T));
        });
  }

  void cancelListeningUIBUWUBDUParameterStreamSubscription() {
    streamSubscription?.cancel();
  }
}