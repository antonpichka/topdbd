import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:web_topdbd/model_q_named_service_view_model/named_service/firebase_app_service.dart';
import 'package:web_topdbd/model_q_named_service_view_model/named_service/firebase_auth_service.dart';
import 'package:web_topdbd/model_q_named_service_view_model/named_service/firebase_firestore_service.dart';
import 'package:web_topdbd/named_view/app_view.dart';

Future<void> main()
async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseAppService.instance.initialize();
  final firebaseApp = FirebaseAppService.instance.getFirebaseApp;
  await FirebaseAuthService.instance.initialize(firebaseApp);
  await FirebaseFirestoreService.instance.initialize(firebaseApp);
  usePathUrlStrategy();
  runApp(AppView());
}
