import 'dart:async';
import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/model/ip_address_firestore/list_ip_address_firestore.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class IPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening<T extends IPAddressFirestore,Y extends ListIPAddressFirestore<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  Future<void> startListening(String parameter,Function(Result<T> resultIPAddressFirestore) callback)
  async {
    try {
      final listDocumentByIPAddress = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.ipAddress)
          .where(KeysFirebaseFirestoreServiceUtility.ipAddressQUniqueIdByUser,isEqualTo: parameter)
          .limit(1)
          .get();
      if((listDocumentByIPAddress?.size ?? 0) <= 0) {
        callback(Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListeningQWhereLocalExceptionGuiltyUserNoExists)));
        return;
      }
      final itemOneDocumentByIPAddress = listDocumentByIPAddress?.docs[0];
      streamSubscription = firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.ipAddress)
          .doc(itemOneDocumentByIPAddress!.id)
          .snapshots()
          .listen((event) {
            final documentByIPAddress = event;
            callback(Result<T>.success(IPAddressFirestore(
                documentByIPAddress.data()![KeysFirebaseFirestoreServiceUtility.ipAddressQUniqueIdByUser],
                documentByIPAddress.data()![KeysFirebaseFirestoreServiceUtility.ipAddressQIp]) as T));
          });
    } catch(e) {
      callback(Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())));
    }
  }

  void cancelListening() {
    streamSubscription?.cancel();
  }
}