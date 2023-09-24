import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_app_service.dart';
import 'package:web_topdbd/named_service/firebase_auth_service.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
final class InitializeServiceUtility {
  const InitializeServiceUtility._();

  static Future<String> init()
  async {
    await FirebaseAppService.instance.initialize();
    final firebaseApp = FirebaseAppService.instance.getFirebaseApp;
    await FirebaseAuthService.instance.initialize(firebaseApp);
    await FirebaseFirestoreService.instance.initialize(firebaseApp);
    return KeysSuccessUtility.sUCCESS;
  }
}