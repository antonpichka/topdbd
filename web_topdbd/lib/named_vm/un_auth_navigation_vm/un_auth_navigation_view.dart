import 'package:flutter/material.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';

final class UnAuthNavigationView extends StatelessWidget {
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
            iconColor: Theme.of(context).iconTheme.color!,
            moreIconColor: Theme.of(context).iconTheme.color!,
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
                  WebNavigationUtility
                      .goWhereChangeUrlAddressAndNewViewFromTwo(context,KeysNavigationUtility.navigationViewQQHome);
                }),
            PlutoMenuItem(
                title: "|",
                enable: false),
            PlutoMenuItem(
                title: "TOP Players",
                icon: Icons.stacked_bar_chart,
                onTap: () {
                  WebNavigationUtility
                      .goWhereChangeUrlAddressAndNewViewFromTwo(context,KeysNavigationUtility.navigationViewQQTopPlayers);
                }),
            PlutoMenuItem(
                title: "|",
                enable: false),
            PlutoMenuItem(
                title: "Balance",
                icon: Icons.balance,
                onTap: () {
                  WebNavigationUtility
                      .goWhereChangeUrlAddressAndNewViewFromTwo(context,KeysNavigationUtility.navigationViewQQBalance);
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