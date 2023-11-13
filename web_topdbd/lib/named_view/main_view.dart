import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_main_view/enum_data_for_main_view.dart';
import 'package:web_topdbd/named_view/custom_footer_view.dart';
import 'package:web_topdbd/named_view/drawer_view.dart';
import 'package:web_topdbd/named_view/navigation_view.dart';
import 'package:web_topdbd/named_view/title_w_app_bar_view.dart';
import 'package:web_topdbd/named_view_model/main_view_model/test_main_view_model.dart';

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
          Condition.equals(name: MOBILE, value: Drawer(child: DrawerView())),
          Condition.equals(name: TABLET, value: Drawer(child: DrawerView())),
          Condition.equals(name: DESKTOP, value: null),
        ]
    ).value;
    final valueFIRST = ResponsiveValue<double>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: 4.0),
          Condition.equals(name: TABLET, value: 4.0),
          Condition.equals(name: DESKTOP, value: 50.0),
        ]
    ).value ?? 0.0;
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
              title: TitleWAppBarView(),
              backgroundColor: Theme.of(context).colorScheme.surface,
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(valueFIRST),
                  child: NavigationView())
          ),
          drawer: value,
          body: FooterView(
            footer: Footer(
                backgroundColor: Theme.of(context).colorScheme.background,
                alignment: Alignment.center,
                child: CustomFooterView()
            ),
            flex: 1,
            children: [
              const SizedBox(height: 5),
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