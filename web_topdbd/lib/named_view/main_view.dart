import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_main_view/enum_data_for_main_view.dart';
import 'package:web_topdbd/named_view/drawer_to_main_view.dart';
import 'package:web_topdbd/named_view/list_season_view.dart';
import 'package:web_topdbd/named_view/navigation_view.dart';
import 'package:web_topdbd/named_view/season_view.dart';
import 'package:web_topdbd/named_view/selected_navigation_item_view.dart';
import 'package:web_topdbd/named_view/title_to_app_bar_to_main_view.dart';
import 'package:web_topdbd/named_view_list_view_model/main_view_list_view_model.dart';

final class MainView extends StatefulWidget {
  final String nameLocationByNavigation;

  const MainView(this.nameLocationByNavigation);

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
    final rvWidgetNotVerifiedUser = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: TABLET, value: _buildNotVerifiedUser(context,300,24,24)),
          Condition.largerThan(name: TABLET, value: _buildNotVerifiedUser(context,400,30,30)),
          Condition.smallerThan(name: TABLET, value: _buildNotVerifiedUser(context,250,18,18))
        ]
    ).value ?? Container();
    final rvWidgetIsHack = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: TABLET, value: _buildIsHack(context,300,24)),
          Condition.largerThan(name: TABLET, value: _buildIsHack(context,400,30)),
          Condition.smallerThan(name: TABLET, value: _buildIsHack(context,250,18))
        ]
    ).value ?? Container();
    final dataForMainView = _mainViewListViewModel.getDataForMainView;
    switch(dataForMainView?.getEnumDataForMainView) {
      case EnumDataForMainView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForMainView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForMainView?.exceptionController.getKeyParameterException}")));
      case EnumDataForMainView.isNotVerifiedUserByVerifiedUser:
        return rvWidgetNotVerifiedUser;
      case EnumDataForMainView.isHack:
        return rvWidgetIsHack;
      case EnumDataForMainView.success:
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
                    child: SizedBox(
                      width: double.infinity,
                      child: Card(
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Wrap(
                                  alignment: WrapAlignment.center,
                                  children: [
                                    const Icon(Icons.home, color: Colors.white,),
                                    const SizedBox(width: 2,),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2),
                                      child: Text("Home",
                                        style: Theme.of(context).textTheme.bodyLarge,),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Wrap(
                              children: [
                                SeasonView(),
                                ListSeasonView()
                              ],
                            ),
                            NavigationView(),
                          ],),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SelectedNavigationItemView(widget.nameLocationByNavigation),
                  )
                ],
              ),
            )
        );
      default:
        return Container();
    }
  }

  Widget _buildNotVerifiedUser(BuildContext context,double sizedBoxWidth,double textSize,double textButtonSize) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Column(
                children: [
                  SizedBox(
                    width: sizedBoxWidth,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.all(16.0),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "You are not a verified user",
                                style: TextStyle(
                                  fontSize: textSize,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.8,
                                ),
                              ),
                              const SizedBox(height: 5,),
                              ElevatedButton(
                                  onPressed: () {

                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Theme.of(context).colorScheme.secondary,
                                    foregroundColor: Theme.of(context).textTheme.bodyMedium?.color,
                                  ),
                                  child: Text(
                                    "Logout",
                                    style: TextStyle(
                                      color: Theme.of(context).textTheme.bodyMedium?.color,
                                      fontSize: textButtonSize,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1.8,
                                    ),
                                  )
                              ),
                            ]
                        ),
                      ),
                    ),
                  ),
                ])
        ),
      ),
    );
  }

  Widget _buildIsHack(BuildContext context,double sizedBoxWidth,double textSize) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Column(
                children: [
                  SizedBox(
                    width: sizedBoxWidth,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.all(16.0),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Someone logged into your account OR your ip address has changed (IP addresses do not match)",
                                style: TextStyle(
                                  fontSize: textSize,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.8,
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ),
                ])
        ),
      ),
    );
  }

  Future<void> _init()
  async {
    _mainViewListViewModel
        .getStreamDataForMainView
        .listen((event) {
          setState(() {});
        });
    await _mainViewListViewModel.listeningStreamsFirebaseFirestoreServiceForMainView();
    final result = _mainViewListViewModel.initForMainView();
    debugPrint("MainView: $result");
    if(!mounted) {
      return;
    }
    _mainViewListViewModel.notifyStreamDataForMainView();
  }
}