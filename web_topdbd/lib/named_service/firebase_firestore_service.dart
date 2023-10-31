import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

final class FirebaseFirestoreService {
  static final FirebaseFirestoreService instance = FirebaseFirestoreService._();
  FirebaseFirestore? _firebaseFirestore;

  FirebaseFirestoreService._();

  Future<void> initializeFromFirebaseAppParameterFirebaseFirestore(FirebaseApp firebaseApp)
  async {
    if (_firebaseFirestore != null) {
      return;
    }
    try {
      _firebaseFirestore = FirebaseFirestore.instanceFor(app: firebaseApp);
    } catch(e) {
      throw LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString());
    }
  }

  FirebaseFirestore? get getParameterFirebaseFirestore {
    if (_firebaseFirestore != null) {
      return _firebaseFirestore;
    }
    _firebaseFirestore = FirebaseFirestore.instance;
    return _firebaseFirestore;
  }
}