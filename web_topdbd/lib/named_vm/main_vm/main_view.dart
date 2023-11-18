import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/named_utility/flutter_theme_utility.dart';
import 'package:web_topdbd/named_vm/custom_footer_view.dart';
import 'package:web_topdbd/named_vm/drawer_view.dart';
import 'package:web_topdbd/named_vm/main_vm/enum_data_for_main_view.dart';
import 'package:web_topdbd/named_vm/un_auth_navigation_vm/un_auth_navigation_view.dart';
import 'package:web_topdbd/named_vm/main_vm/test_main_view_model.dart';
import 'package:web_topdbd/named_vm/title_w_app_bar_view.dart';
import 'package:web_topdbd/named_vm/un_auth_drawer_vm/un_auth_drawer_view.dart';
import 'package:web_topdbd/named_vm/un_auth_title_w_app_bar_vm/un_auth_title_w_app_bar_view.dart';

final class MainView extends StatefulWidget {
  final Widget namedView;

  const MainView(this.namedView);

  @override
  State<MainView> createState() => _MainViewState();
}

final class _MainViewState extends State<MainView> {
  /// RELEASE CODE
  // late final MainViewModel _mainViewModel;
  /// TEST CODE
  late final TestMainViewModel _mainViewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _mainViewModel = MainViewModel();
    /// TEST CODE
    _mainViewModel = TestMainViewModel();
    super.initState();
    _initParameterMainViewModel();
  }

  @override
  void dispose() {
    _mainViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final value = ResponsiveValue<Drawer?>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: Drawer(child: DrawerView(UnAuthDrawerView()))),
          Condition.equals(name: TABLET, value: Drawer(child: DrawerView(UnAuthDrawerView()))),
          Condition.equals(name: DESKTOP, value: null),
        ]
    ).value;
    final dataForNamed = _mainViewModel.getDataForNamedParameterNamedStreamWState;
    switch(dataForNamed.getEnumDataForNamed) {
      case EnumDataForMainView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForMainView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForNamed.exceptionController.getKeyParameterException}")));
      case EnumDataForMainView.success:
        return Scaffold(
          appBar: AppBar(
              scrolledUnderElevation: 0.0,
              centerTitle: true,
              title: TitleWAppBarView(UnAuthTitleWAppBarView()),
              backgroundColor: Theme.of(context).colorScheme.surface,
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(50.0),
                  child: UnAuthNavigationView())
          ),
          drawer: value,
          body: FooterView(
            footer: Footer(
                backgroundColor: FlutterThemeUtility.seedColorFIRST,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8.0),
                child: CustomFooterView()
            ),
            flex: 1,
            children: [
              const SizedBox(height: 10),
              widget.namedView
            ],
          ),
        );
      default:
        return Container();
    }
  }

  Future<void> _initParameterMainViewModel() async {
    _mainViewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _mainViewModel.init();
    debugPrint("MainView: $result");
    if(!mounted) {
      return;
    }
    _mainViewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}