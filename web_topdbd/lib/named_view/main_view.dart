import 'package:flutter/material.dart';
import 'package:web_topdbd/named_view/drawer_for_main_view.dart';
import 'package:web_topdbd/named_view/footer_view.dart';
import 'package:web_topdbd/named_view/title_for_app_bar_for_main_view.dart';
import 'package:web_topdbd/named_view_list_view_model/main_view_list_view_model.dart';

final class MainView extends StatefulWidget {
  @override
  State<MainView> createState() => _MainViewState();
}

final class _MainViewState extends State<MainView> {
  late final MainViewListViewModel _mainViewListViewModel;

  @override
  void initState() {
    _mainViewListViewModel = MainViewListViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _mainViewListViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  /*  final rvWidgetAppBar = ResponsiveValue<Widget>(
        context,
        defaultValue: WebDesktopAppBarTitleView(),
        conditionalValues: [
          Condition.equals(name: TABLET, value: WebTabletAndMobileAppBarTitleView()),
          Condition.largerThan(name: TABLET, value: WebDesktopAppBarTitleView()),
          Condition.smallerThan(name: TABLET, value: WebTabletAndMobileAppBarTitleView())
        ]
    ).value;
    final rvDrawer = ResponsiveValue<Drawer?>(
        context,
        defaultValue: Drawer(child: WebTabletAndMobileDrawerView()),
        conditionalValues: [
          Condition.equals(name: TABLET, value: Drawer(child: WebTabletAndMobileDrawerView())),
          Condition.largerThan(name: TABLET, value: null),
          Condition.smallerThan(name: TABLET, value: Drawer(child: WebTabletAndMobileDrawerView()))
        ]
    ).value;
    final webDesktopOrTabletAndMobileNavigationItemZeroViewResponsiveValue = ResponsiveValue<Widget>(
        context,
        defaultValue: WebDesktopNavigationItemZeroView(),
        conditionalValues: [
          Condition.equals(name: TABLET, value: WebTabletAndMobileNavigationItemZeroView()),
          Condition.largerThan(name: TABLET, value: WebDesktopNavigationItemZeroView()),
          Condition.smallerThan(name: TABLET, value: WebTabletAndMobileNavigationItemZeroView())
        ]
    ).value;*/
    return SelectionArea(
        child: Scaffold(
          appBar: AppBar(
            title: TitleForAppBarForMainView(),
            iconTheme: const IconThemeData(
                color: Colors.white60,
                size: 40),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(4.0),
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).dividerColor,
                    height: 1.0,
                  ),
                ],
              ),
            ),
          ),
          drawer: DrawerForMainView(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 5),
                // webDesktopOrTabletAndMobileNavigationItemZeroViewResponsiveValue!,
                // WebDesktopAndTabletAndMobileNavigationItemOneView(),
                FooterView()
              ],),
          ),
        )
    );
  }

  Future<void> _init()
  async {

  }
}