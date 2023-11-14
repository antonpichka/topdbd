import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/app_vm/app_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /// RELEASE CODE
  // await FirebaseAppService.instance.initializeParameterFirebaseApp();
  // final firebaseApp = FirebaseAppService.instance.getParameterFirebaseApp!;
  // await FirebaseAuthService.instance.initializeFromFirebaseAppParameterFirebaseAuth(firebaseApp);
  // await FirebaseFirestoreService.instance.initializeFromFirebaseAppParameterFirebaseFirestore(firebaseApp);
  runApp(AppView());
}
