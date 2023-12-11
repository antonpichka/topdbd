import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

@immutable
final class WebNavigationUtility {
  const WebNavigationUtility._();

  static void goWhereChangeUrlAddressAndNewViewFromTwo(BuildContext context,String nameRoute) {
    html.window.history.pushState(null, '',nameRoute);
    context.go(nameRoute);
  }

  static void goWhereChangeUrlAddressAndNewViewFromNameRoute(String nameRoute) {
    html.window.history.pushState(null, '',nameRoute);
  }
}