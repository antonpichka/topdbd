import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:web_topdbd/named_view/app_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Removes "#" from URL, for more check out link below:
  // https://docs.flutter.dev/development/ui/navigation/url-strategies
  usePathUrlStrategy();
  runApp(AppView());
}
