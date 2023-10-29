import 'package:common_topdbd/named_utility/keys_api_utility.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

final class FirebaseAppService {
  static final FirebaseAppService instance = FirebaseAppService._();
  FirebaseApp? _firebaseApp;

  FirebaseAppService._();

  Future<void> initializeParameterFirebaseApp()
  async {
    if (_firebaseApp != null) {
      return;
    }
    const option = FirebaseOptions(
        apiKey: KeysAPIUtility.firebaseQQApiKey,
        appId: KeysAPIUtility.firebaseQQWebAppId,
        messagingSenderId: KeysAPIUtility.firebaseQQMessagingSenderId,
        projectId: KeysAPIUtility.firebaseQQProjectId);
    try {
      _firebaseApp = await Firebase.initializeApp(options: option);
    } catch(e) {
      throw LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString());
    }
  }

  FirebaseApp? get getParameterFirebaseApp {
    if (_firebaseApp != null) {
      return _firebaseApp;
    }
    _firebaseApp = Firebase.app(KeysAPIUtility.firebaseQQProjectName);
    return _firebaseApp;
  }
}