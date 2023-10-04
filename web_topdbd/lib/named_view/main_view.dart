import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/named_view/drawer_to_main_view.dart';
import 'package:web_topdbd/named_view/favorites_navigation_view.dart';
import 'package:web_topdbd/named_view/season_view.dart';
import 'package:web_topdbd/named_view/selected_navigation_item_view.dart';
import 'package:web_topdbd/named_view/navigation_view.dart';
import 'package:web_topdbd/named_view/title_to_app_bar_to_main_view.dart';
import 'package:web_topdbd/named_view_list_view_model/main_view_list_view_model.dart';

final class MainView extends StatefulWidget {
  @override
  State<MainView> createState() => _MainViewState();
}

final class _MainViewState extends State<MainView> {
  late final MainViewListViewModel _mainViewListViewModel;
  Color _color = Colors.white;

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
          body: FooterView(
            footer: Footer(
              backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                    text: "Terms of Use",
                    style: TextStyle(
                        color: _color,
                        fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize),
                    onEnter: (p1) {
                      setState(() {
                        _color = Theme.of(context).colorScheme.secondary;
                      });
                    },
                    onExit: (p2) {
                      setState(() {
                        _color = Colors.white;
                      });
                    },
                    recognizer: TapGestureRecognizer()..onTap = () {

                    }
                  ),
              ),
            ),
            flex: 1,
            children: [
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SeasonView(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Wrap(
                  children: [
                    FavoritesNavigationView(),
                    NavigationView()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SelectedNavigationItemView(),
              )
            ],
          ),
        )
    );
  }

  Future<void> _init()
  async {

  }
}