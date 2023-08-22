import 'package:common_topdbd/named_utility/keys_api_utility.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';

final class FirebaseAppService {
  static final FirebaseAppService instance = FirebaseAppService._();
  static FirebaseApp? _firebaseApp;
  static bool _isExceptionInitialize = false;

  FirebaseAppService._();

  Future<void> initialize()
  async {
    if (_firebaseApp != null) {
      return;
    }
    const option = FirebaseOptions(
        apiKey: KeysAPIUtility.firebaseApiKey,
        appId: KeysAPIUtility.firebaseWebAppId,
        messagingSenderId: KeysAPIUtility.firebaseMessagingSenderId,
        projectId: KeysAPIUtility.firebaseProjectId);
    try {
      _firebaseApp = await Firebase.initializeApp(options: option);
    } catch(e) {
      LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString());
      _isExceptionInitialize = true;
    }
    return;
  }

  FirebaseApp? get getFirebaseApp {
    if (_firebaseApp != null) {
      return _firebaseApp;
    }
    _firebaseApp = Firebase.app(KeysAPIUtility.firebaseProjectName);
    return _firebaseApp;
  }

  bool get getIsExceptionInitialize {
    return _isExceptionInitialize;
  }
}