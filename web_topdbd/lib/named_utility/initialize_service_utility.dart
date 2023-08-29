import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:web_topdbd/named_service/firebase_app_service.dart';
import 'package:web_topdbd/named_service/firebase_auth_service.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

final class InitializeServiceUtility {
  static bool _isInit = false;

  InitializeServiceUtility._();

  static Future<String> init()
  async {
    if(_isInit) {
      return KeysSuccessUtility.initializeServiceUtilityQWhereTrueParameterIsInit;
    }
    _isInit = true;
    await FirebaseAppService.instance.initialize();
    final firebaseApp = FirebaseAppService.instance.getFirebaseApp;
    await FirebaseAuthService.instance.initialize(firebaseApp);
    await FirebaseFirestoreService.instance.initialize(firebaseApp);
    return KeysSuccessUtility.sUCCESS;
  }
}