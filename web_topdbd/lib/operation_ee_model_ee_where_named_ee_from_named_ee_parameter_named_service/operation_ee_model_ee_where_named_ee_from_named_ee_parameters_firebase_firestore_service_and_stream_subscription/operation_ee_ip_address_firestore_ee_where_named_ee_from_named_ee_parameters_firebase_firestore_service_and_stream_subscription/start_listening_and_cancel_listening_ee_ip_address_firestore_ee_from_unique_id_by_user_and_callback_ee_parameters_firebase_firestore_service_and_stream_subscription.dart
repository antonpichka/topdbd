import 'dart:async';
import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/model/ip_address_firestore/list_ip_address_firestore.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class StartListeningAndCancelListeningEEIPAddressFirestoreEEFromUniqueIdByUserAndCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription<T extends IPAddressFirestore,Y extends ListIPAddressFirestore<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  Future<void> startListeningIPAddressFirestoreFromUniqueIdByUserAndCallbackParametersFirebaseFirestoreServiceAndStreamSubscription(String uniqueIdByUser,Function(Result<T>) callback) async {
    try {
      final listDocumentByIPAddress = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.ipAddressFirestore)
          .where(KeysFirebaseFirestoreServiceUtility.ipAddressFirestoreQQUniqueIdByUser,isEqualTo: uniqueIdByUser)
          .limit(1)
          .get();
      if((listDocumentByIPAddress?.size ?? 0) <= 0) {
        callback(Result<T>.exception(LocalException(this,EnumGuilty.user,KeysExceptionUtility.startListeningAndCancelListeningEEIPAddressFirestoreEEFromUniqueIdByUserAndCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription)));
        return;
      }
      final firstItemDocumentByIPAddress = listDocumentByIPAddress?.docs[0];
      streamSubscription = firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.ipAddressFirestore)
          .doc(firstItemDocumentByIPAddress?.id)
          .snapshots()
          .listen((event) {
            callback(Result<T>.success(IPAddressFirestore(
                event.data()?[KeysFirebaseFirestoreServiceUtility.ipAddressFirestoreQQUniqueIdByUser] ?? "",
                event.data()?[KeysFirebaseFirestoreServiceUtility.ipAddressFirestoreQQIp] ?? "") as T));
          });
    } catch(e) {
      callback(Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString())));
    }
  }

  void cancelListeningIPAddressFirestoreParameterStreamSubscription() {
    streamSubscription?.cancel();
  }
}