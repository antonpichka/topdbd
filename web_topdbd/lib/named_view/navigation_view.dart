import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

final class NavigationView extends StatefulWidget {
  @override
  State<NavigationView> createState() => _NavigationViewState();
}

final class _NavigationViewState extends State<NavigationView> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.secondary,
      child: MouseRegion(
        cursor: SystemMouseCursors.allScroll,
        child: PlutoMenuBar(
          mode: PlutoMenuBarMode.hover,
          backgroundColor: Theme.of(context).colorScheme.background,
          borderColor: Theme.of(context).colorScheme.background,
          itemStyle: PlutoMenuItemStyle(
            textStyle: TextStyle(
              fontFamily: Theme.of(context).textTheme.bodyMedium?.fontFamily,
              fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize,
              color: Theme.of(context).hintColor,),
            iconColor: Colors.white,
            moreIconColor: Colors.white,
          ),
          menus: [
            PlutoMenuItem(
                title: "->",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "Home",
                icon: Icons.home,
                onTap: () {
                  html.window.history.pushState(null,'',KeysNavigationUtility.navigationViewQQHome);
                  context.go(KeysNavigationUtility.navigationViewQQHome);
                }),
            PlutoMenuItem(
                title: "|",
                enable: false),
            PlutoMenuItem(
                title: "TOP Players",
                icon: Icons.stacked_bar_chart,
                onTap: () {
                  html.window.history.pushState(null,'',KeysNavigationUtility.navigationViewQQTopPlayers);
                  context.go(KeysNavigationUtility.navigationViewQQTopPlayers);
                }),
            PlutoMenuItem(
                title: "|",
                enable: false),
            PlutoMenuItem(
                title: "Balance",
                icon: Icons.balance,
                onTap: () {
                  html.window.history.pushState(null, '',KeysNavigationUtility.navigationViewQQBalance);
                  context.go(KeysNavigationUtility.navigationViewQQBalance);
                }),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "",
                enable: false),
            PlutoMenuItem(
                title: "  ",
                enable: false),
          ],
        ),
      ),
    );
  }
}