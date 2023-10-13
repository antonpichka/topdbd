import 'package:flutter/material.dart';
import 'package:web_topdbd/named_utility/initialize_service_utility.dart';
import 'package:web_topdbd/named_view/app_view.dart';

Future<void> main()
async {
  WidgetsFlutterBinding.ensureInitialized();
  final result = await InitializeServiceUtility.init();
  debugPrint("main: $result");
  runApp(AppView());
}
