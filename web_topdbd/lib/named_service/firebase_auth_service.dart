import 'package:common_topdbd/named_utility/keys_api_utility.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

final class FirebaseAuthService {
  static final FirebaseAuthService instance = FirebaseAuthService._();
  FirebaseAuth? _firebaseAuth;

  FirebaseAuthService._();

  Future<void> initializeFromFirebaseAppParameterFirebaseAuth(FirebaseApp firebaseApp)
  async {
    if(_firebaseAuth != null) {
      return;
    }
    try {
      _firebaseAuth = FirebaseAuth.instanceFor(
          app: firebaseApp);
      await _firebaseAuth?.signInWithEmailAndPassword(
          email: KeysAPIUtility.firebaseAuthQQEmail,
          password: KeysAPIUtility.firebaseAuthQQPassword);
    } catch(e) {
      throw LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString());
    }
  }

  FirebaseAuth? get getParameterFirebaseAuth {
    if (_firebaseAuth != null) {
      return _firebaseAuth;
    }
    _firebaseAuth = FirebaseAuth.instance;
    return _firebaseAuth;
  }
}