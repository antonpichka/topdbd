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
import 'package:web_topdbd/named_view_model/main_view_model.dart';

final class MainView extends StatefulWidget {
  final String nameRoute;
  final String id;

  const MainView(this.nameRoute,this.id);

  @override
  State<MainView> createState() => _MainViewState();
}

final class _MainViewState extends State<MainView> {
  late final MainViewModel _mainViewModel;
  Color _color = Colors.white;

  @override
  void initState() {
    _mainViewModel = MainViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _mainViewModel.dispose();
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
    final dataForNamed = _mainViewModel.getDataForNamedParameterNamedStreamWState;
    switch(dataForNamed.getEnumDataForNamed) {
      case EnumDataForMainView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForMainView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForNamed.exceptionController.getKeyParameterException}")));
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
                    child: SelectedNavigationItemView(widget.nameRoute),
                  )
                ],
              ),
            )
        );
      default:
        return Container();
    }
  }

  Future<void> _init()
  async {
    _mainViewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    await _mainViewModel.listeningStreamsFirebaseFirestoreServiceParametersFour();
    final result = _mainViewModel.init();
    debugPrint("MainView: $result");
    if(!mounted) {
      return;
    }
    _mainViewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}