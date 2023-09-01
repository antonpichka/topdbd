import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

final class FirebaseFirestoreService {
  static final FirebaseFirestoreService instance = FirebaseFirestoreService._();
  FirebaseFirestore? _firebaseFirestore;
  bool _isExceptionInitialize = false;

  FirebaseFirestoreService._();

  Future<void> initialize(FirebaseApp? firebaseApp)
  async {
    if (_firebaseFirestore != null) {
      return;
    }
    try {
      _firebaseFirestore = FirebaseFirestore.instanceFor(app: firebaseApp!);
    } catch(e) {
      LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString());
      _isExceptionInitialize = true;
    }
    return;
  }

  FirebaseFirestore? get getFirebaseFirestore {
    if (_firebaseFirestore != null) {
      return _firebaseFirestore;
    }
    _firebaseFirestore = FirebaseFirestore.instance;
    return _firebaseFirestore;
  }

  bool get getIsExceptionInitialize {
    return _isExceptionInitialize;
  }
}