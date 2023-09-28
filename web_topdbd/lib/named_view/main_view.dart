import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/named_view/drawer_to_main_view.dart';
import 'package:web_topdbd/named_view/title_to_app_bar_to_main_view.dart';
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
    final rvDrawerToMainView = ResponsiveValue<Drawer?>(
        context,
        conditionalValues: [
          Condition.equals(name: TABLET, value: Drawer(child: DrawerToMainView())),
          Condition.largerThan(name: TABLET, value: null),
          Condition.smallerThan(name: TABLET, value: Drawer(child: DrawerToMainView()))
        ]
    ).value;
    return SelectionArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: TitleToAppBarToMainView(),
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
          drawer: rvDrawerToMainView,
          body: const SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 5),
                // webDesktopOrTabletAndMobileNavigationItemZeroViewResponsiveValue!,
                // WebDesktopAndTabletAndMobileNavigationItemOneView(),
               // Expanded(child: Container()),
               // Expanded(flex:2,child: Container()),
              //  Expanded(child: FooterView())
              ],),
          ),
        )
    );
  }

  Future<void> _init()
  async {

  }
}