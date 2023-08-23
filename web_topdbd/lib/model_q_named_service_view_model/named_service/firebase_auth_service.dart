import 'package:common_topdbd/named_utility/keys_api_utility.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';

final class FirebaseAuthService {
  static final FirebaseAuthService instance = FirebaseAuthService._();
  static FirebaseAuth? _firebaseAuth;
  static bool _isExceptionInitialize = false;

  FirebaseAuthService._();

  Future<void> initialize(FirebaseApp? firebaseApp)
  async {
    if(_firebaseAuth != null) {
      return;
    }
    try {
      _firebaseAuth = FirebaseAuth.instanceFor(
          app: firebaseApp!);
      await _firebaseAuth?.signInWithEmailAndPassword(
          email: KeysAPIUtility.firebaseAuthEmail,
          password: KeysAPIUtility.firebaseAuthPassword);
    } catch(e) {
      LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString());
      _isExceptionInitialize = true;
    }
    return;
  }

  FirebaseAuth? get getFirebaseAuth {
    if (_firebaseAuth != null) {
      return _firebaseAuth;
    }
    _firebaseAuth = FirebaseAuth.instance;
    return _firebaseAuth;
  }

  bool get getIsExceptionInitialize {
    return _isExceptionInitialize;
  }
}