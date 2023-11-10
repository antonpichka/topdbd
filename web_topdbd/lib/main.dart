import 'package:flutter/material.dart';
import 'package:web_topdbd/named_service/firebase_app_service.dart';
import 'package:web_topdbd/named_service/firebase_auth_service.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';
import 'package:web_topdbd/named_view/app_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseAppService.instance.initializeParameterFirebaseApp();
  final firebaseApp = FirebaseAppService.instance.getParameterFirebaseApp!;
  await FirebaseAuthService.instance.initializeFromFirebaseAppParameterFirebaseAuth(firebaseApp);
  await FirebaseFirestoreService.instance.initializeFromFirebaseAppParameterFirebaseFirestore(firebaseApp);
  runApp(AppView());
}
