import 'package:flutter/material.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';

final class AuthNavigationUserView extends StatelessWidget {
  final String username;
  final bool isAuthMyUser;

  const AuthNavigationUserView(this.username,this.isAuthMyUser);

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
                  WebNavigationUtility.goWhereChangeUrlAddressAndNewViewFromTwo(
                      context,
                      KeysNavigationUtility.getNavigationUserViewQQUserQQIdFromId(username));
                }),
            PlutoMenuItem(
                title: "|",
                enable: false),
            PlutoMenuItem(
                title: "Stats",
                icon: Icons.query_stats,
                onTap: () {
                  WebNavigationUtility.goWhereChangeUrlAddressAndNewViewFromTwo(
                      context,
                      KeysNavigationUtility.getNavigationUserViewQQUserQQIdQQStatsFromId(username));
                }),
            PlutoMenuItem(
                title: "|",
                enable: false),
            PlutoMenuItem(
                title: "Matches",
                icon: Icons.videogame_asset_outlined,
                onTap: () {
                  WebNavigationUtility.goWhereChangeUrlAddressAndNewViewFromTwo(
                      context,
                      KeysNavigationUtility.getNavigationUserViewQQUserQQIdQQMatchesFromId(username));
                }),
            isAuthMyUser
                ? PlutoMenuItem(
                title: "|",
                enable: false)
                : PlutoMenuItem(
                title: "",
                enable: false),
            isAuthMyUser
                ? PlutoMenuItem(
                title: "Settings",
                icon: Icons.lock,
                onTap: () {
                  WebNavigationUtility.goWhereChangeUrlAddressAndNewViewFromTwo(
                      context,
                      KeysNavigationUtility.getAuthNavigationUserViewQQUserQQIdQQSettingsFromId(username));
                })
                : PlutoMenuItem(
                title: "",
                enable: false)
          ],
        ),
      ),
    );
  }

}