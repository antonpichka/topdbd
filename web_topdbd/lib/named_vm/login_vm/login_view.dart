import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/named_utility/flutter_theme_utility.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';
import 'package:web_topdbd/named_vm/login_vm/enum_data_for_login_view.dart';
import 'package:web_topdbd/named_vm/login_vm/test_login_view_model.dart';

final class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

final class _LoginViewState extends State<LoginView> {
  /// RELEASE CODE
  // late final LoginViewModel _viewModel;
  /// TEST CODE
  late final TestLoginViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = LoginViewModel();
    /// TEST CODE
    _viewModel = TestLoginViewModel();
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
    final value = ResponsiveValue<double>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: 280),
          Condition.equals(name: TABLET, value: 330),
          Condition.equals(name: DESKTOP, value: 400),
        ]
    ).value ?? 0.0;
    switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForLoginView.isLoading:
        return const Center(child: CircularProgressIndicator());
      case EnumDataForLoginView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForLoginView.success:
        return Center(
          child: SizedBox(
            width: value,
            child: Card(
              color: Colors.transparent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(dataForNamedParameterNamedStreamWState.termsOfUse),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0,left: 8.0,right: 8.0),
                    child: Row(
                      children: [
                        dataForNamedParameterNamedStreamWState.isCheckAgreeTermsOfUse ? IconButton(
                            icon: const Icon(Icons.check_box_outlined),
                            onPressed: () {
                              _viewModel.setCheckAgreeTermsOfUse(false);
                            })
                            : IconButton(
                            icon: const Icon(Icons.check_box_outline_blank),
                            onPressed: () {
                              _viewModel.setCheckAgreeTermsOfUse(true);
                            }),
                        const Flexible(
                            child: Text("I agree to the terms of use of 'TOPDBD'",)),
                      ],
                    ),
                  ),
                  dataForNamedParameterNamedStreamWState.isCheckAgreeTermsOfUse ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: const Text("Sign In With Discord"),
                      leading: const Icon(FontAwesomeIcons.discord),
                      tileColor: FlutterThemeUtility.discordLogoColor,
                      onTap: () {
                        _viewModel.signInWithDiscord(
                                () => WebNavigationUtility.goWhereChangeUrlAddressAndNewViewFromTwo(context,KeysNavigationUtility.home),
                                (p0) => {});
                      },),)
                      : Container(),
                  const SizedBox(height: 5,),
                ],),),),
        );
    }
  }

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _viewModel.init();
    debugPrint("LoginView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}