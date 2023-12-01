import 'package:flutter/material.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';
import 'package:web_topdbd/named_vm/auth_navigation_vm/test_auth_navigation_view_model.dart';

final class AuthNavigationView extends StatefulWidget {
  @override
  State<AuthNavigationView> createState() => _AuthNavigationViewState();
}

final class _AuthNavigationViewState extends State<AuthNavigationView> {
  /// RELEASE CODE
  // late final AuthNavigationViewModel _authNavigationViewModel;
  /// TEST CODE
  late final TestAuthNavigationViewModel _authNavigationViewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _authNavigationViewModel = AuthNavigationViewModel();
    /// TEST CODE
    _authNavigationViewModel = TestAuthNavigationViewModel();
    super.initState();
    _initParameterAuthNavigationViewModel();
  }

  @override
  void dispose() {
    _authNavigationViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForNamedParameterNamedStreamWState = _authNavigationViewModel.getDataForNamedParameterNamedStreamWState;
    final value = ResponsiveValue<List<PlutoMenuItem>>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: dataForNamedParameterNamedStreamWState.isAdminByRoleUser
              ? _getListPlutoMenuItemWhereMobileWTabletAndIsAdminByRoleUserFromContext(context)
              : _getListPlutoMenuItemWhereMobileWTabletFromContext(context)),
          Condition.equals(name: TABLET, value: dataForNamedParameterNamedStreamWState.isAdminByRoleUser
              ? _getListPlutoMenuItemWhereMobileWTabletAndIsAdminByRoleUserFromContext(context)
              : _getListPlutoMenuItemWhereMobileWTabletFromContext(context)),
          Condition.equals(name: DESKTOP, value: dataForNamedParameterNamedStreamWState.isAdminByRoleUser
              ? _getListPlutoMenuItemWhereDesktopAndIsAdminByRoleUserFromContext(context)
              : _getListPlutoMenuItemWhereDesktopFromContext(context)),
        ]
    ).value ?? _getListPlutoMenuItemWhereDesktopFromContext(context);
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
          menus: value
        ),
      ),
    );
  }

  List<PlutoMenuItem> _getListPlutoMenuItemWhereMobileWTabletFromContext(BuildContext context) {
    return [
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
    ];
  }

  List<PlutoMenuItem> _getListPlutoMenuItemWhereMobileWTabletAndIsAdminByRoleUserFromContext(BuildContext context) {
    return [
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
          title: "|",
          enable: false),
      PlutoMenuItem(
          title: "Admin",
          icon: Icons.lock,
          onTap: () {

          })
    ];
  }

  List<PlutoMenuItem> _getListPlutoMenuItemWhereDesktopFromContext(BuildContext context) {
    return [
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
          title: "",
          enable: false),
    ];
  }

  List<PlutoMenuItem> _getListPlutoMenuItemWhereDesktopAndIsAdminByRoleUserFromContext(BuildContext context) {
    return [
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
          title: "|",
          enable: false),
      PlutoMenuItem(
          title: "Admin",
          icon: Icons.lock,
          onTap: () {

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
          title: "",
          enable: false),
    ];
  }

  Future<void> _initParameterAuthNavigationViewModel() async {
    _authNavigationViewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _authNavigationViewModel.init();
    debugPrint("AuthNavigationView: $result");
    if(!mounted) {
      return;
    }
    _authNavigationViewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}