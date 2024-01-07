import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';
import 'package:web_topdbd/named_vm/auth_drawer_vm/auth_drawer_view.dart';
import 'package:web_topdbd/named_vm/auth_main_vm/enum_data_for_auth_main_view.dart';
import 'package:web_topdbd/named_vm/auth_main_vm/test_auth_main_view_model.dart';
import 'package:web_topdbd/named_vm/auth_navigation_vm/auth_navigation_view.dart';
import 'package:web_topdbd/named_vm/auth_title_w_app_bar_vm/auth_title_w_app_bar_view.dart';
import 'package:web_topdbd/named_vm/custom_footer_view.dart';
import 'package:web_topdbd/named_vm/drawer_view.dart';
import 'package:web_topdbd/named_vm/title_w_app_bar_view.dart';

final class AuthMainView extends StatefulWidget {
  final Widget namedView;

  const AuthMainView(this.namedView);

  @override
  State<AuthMainView> createState() => _AuthMainViewState();
}

final class _AuthMainViewState extends State<AuthMainView> {
  /// RELEASE CODE
  // late final AuthMainViewModel _viewModel;
  /// TEST CODE
  late final TestAuthMainViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = AuthMainViewModel();
    /// TEST CODE
    _viewModel = TestAuthMainViewModel();
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
    final dataForNamedParameterNamedStreamWState = _viewModel.getDataForNamedParameterNamedStreamWState;
    final value = ResponsiveValue<Drawer?>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: Drawer(child: DrawerView(AuthDrawerView()))),
          Condition.equals(name: TABLET, value: Drawer(child: DrawerView(AuthDrawerView()))),
          Condition.equals(name: DESKTOP, value: null),
        ]
    ).value;
    switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForAuthMainView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForAuthMainView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}")));
      case EnumDataForAuthMainView.success:
        return Scaffold(
          appBar: AppBar(
              scrolledUnderElevation: 0.0,
              centerTitle: true,
              title: TitleWAppBarView(AuthTitleWAppBarView()),
              backgroundColor: Theme.of(context).colorScheme.surface,
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(50.0),
                  child: AuthNavigationView())
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
    await _viewModel.listeningStreamsFirebaseFirestoreService((p0)=> WebNavigationUtility.goWhereChangeUrlAddressAndNewViewFromTwo(context,p0));
    final result = await _viewModel.init();
    debugPrint("AuthMainView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}