import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';

final class NavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final value = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: _getWidgetWhereMobileAndTablet()),
          Condition.equals(name: TABLET, value: _getWidgetWhereMobileAndTablet()),
          Condition.equals(name: DESKTOP, value: _getWidgetWhereDesktopFromContext(context)),
        ]
    ).value;
    return value!;
  }

  Widget _getWidgetWhereMobileAndTablet() {
    return Container(height: 1.0,);
  }

  Widget _getWidgetWhereDesktopFromContext(BuildContext context) {
    return Row(
      children: [
        /// NEEDS FIX
        Expanded(child: Container()),
        Expanded(
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
                  title: "Home",
                  icon: Icons.home,
                  onTap: () {
                    context.go(KeysNavigationUtility.navigationViewQQHome);
                  }),
              PlutoMenuItem(
                  title: "TOP Players",
                  icon: Icons.stacked_bar_chart,
                  onTap: () {
                    context.go(KeysNavigationUtility.navigationViewQQTopPlayers);
                  }),
              PlutoMenuItem(
                  title: "Balance",
                  icon: Icons.balance,
                  onTap: () {
                    context.go(KeysNavigationUtility.navigationViewQQBalance);
                  }),
              /*PlutoMenuItem(
                  title: 'Tournaments',
                  icon: Icons.tour,
                  onTap: () {
                    context.go(KeysNavigationUtility.navigationViewQQTournaments);
                  }),*/
            ],
          ),
        ),
        Expanded(child: Container()),
      ],
    );
  }
}