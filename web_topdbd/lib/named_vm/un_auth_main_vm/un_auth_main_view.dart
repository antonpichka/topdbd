import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/named_vm/custom_footer_view.dart';
import 'package:web_topdbd/named_vm/drawer_view.dart';
import 'package:web_topdbd/named_vm/title_w_app_bar_view.dart';
import 'package:web_topdbd/named_vm/un_auth_drawer_view.dart';
import 'package:web_topdbd/named_vm/un_auth_main_vm/enum_data_for_un_auth_main_view.dart';
import 'package:web_topdbd/named_vm/un_auth_main_vm/test_un_auth_main_view_model.dart';
import 'package:web_topdbd/named_vm/un_auth_navigation_view.dart';
import 'package:web_topdbd/named_vm/un_auth_title_w_app_bar_view.dart';

final class UnAuthMainView extends StatefulWidget {
  final Widget namedView;

  const UnAuthMainView(this.namedView);

  @override
  State<UnAuthMainView> createState() => _UnAuthMainViewState();
}

final class _UnAuthMainViewState extends State<UnAuthMainView> {
  /// RELEASE CODE
  // late final UnAuthMainViewModel _viewModel;
  /// TEST CODE
  late final TestUnAuthMainViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = UnAuthMainViewModel();
    /// TEST CODE
    _viewModel = TestUnAuthMainViewModel();
    super.initState();
    _initParameterViewModel();
  }

  @override
  void dispose() {
    _viewModel.dispose();
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
    final dataForNamed = _viewModel.getDataForNamedParameterNamedStreamWState;
    switch(dataForNamed.getEnumDataForNamed) {
      case EnumDataForUnAuthMainView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForUnAuthMainView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForNamed.exceptionController.getKeyParameterException}")));
      case EnumDataForUnAuthMainView.success:
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
                backgroundColor: Theme.of(context).colorScheme.background,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8.0),
                child: CustomFooterView()
            ),
            flex: 1,
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: widget.namedView,
              )
            ],
          ),
        );
      default:
        return Container();
    }
  }

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _viewModel.init();
    debugPrint("UnAuthMainView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}