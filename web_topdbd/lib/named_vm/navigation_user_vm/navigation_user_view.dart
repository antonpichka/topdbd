import 'package:flutter/material.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';

final class NavigationUserView extends StatelessWidget {
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
                title: "Info",
                icon: Icons.info_outline,
                onTap: () {
                  WebNavigationUtility.goWhereChangeUrlAddressAndNewViewWithWFromThree(
                      context,
                      KeysNavigationUtility.getHtmlRouteWhereNavigationUserViewQQUserQQIdFromId("Vicar32"),
                      KeysNavigationUtility.getNameRouteWhereNavigationUserViewQQUserQQIdFromId("Vicar32"));
                }),
            PlutoMenuItem(
                title: "|",
                enable: false),
            PlutoMenuItem(
                title: "Stats",
                icon: Icons.query_stats,
                onTap: () {
                  WebNavigationUtility.goWhereChangeUrlAddressAndNewViewWithWFromThree(
                      context,
                      KeysNavigationUtility.getHtmlRouteWhereNavigationUserViewQQUserQQIdQQStatsFromId("Vicar32"),
                      KeysNavigationUtility.getNameRouteWhereNavigationUserViewQQUserQQIdQQStatsFromId("Vicar32"));
                }),
            PlutoMenuItem(
                title: "|",
                enable: false),
            PlutoMenuItem(
                title: "Matches",
                icon: Icons.videogame_asset_outlined,
                onTap: () {
                  WebNavigationUtility.goWhereChangeUrlAddressAndNewViewWithWFromThree(
                      context,
                      KeysNavigationUtility.getHtmlRouteWhereNavigationUserViewQQUserQQIdQQMatchesFromId("Vicar32"),
                      KeysNavigationUtility.getNameRouteWhereNavigationUserViewQQUserQQIdQQMatchesFromId("Vicar32"));
                }),
          ],
        ),
      ),
    );
  }

}