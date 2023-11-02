import 'package:custom_signin_buttons/custom_signin_buttons.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/data_for_login_view.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/enum_data_for_login_view.dart';
import 'package:web_topdbd/named_view_model/login_view_model.dart';

final class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

final class _LoginViewState extends State<LoginView> {
  late final LoginViewModel _loginViewModel;
  late final ScrollController _scrollController;

  @override
  void initState() {
    _loginViewModel = LoginViewModel();
    _scrollController = ScrollController();
    super.initState();
    _initParameterLoginViewModel();
  }

  @override
  void dispose() {
    _loginViewModel.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForNamedParameterNamedStreamWState = _loginViewModel.getDataForNamedParameterNamedStreamWState;
    final value = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: _getLoginFromFiveParametersTwo(context,dataForNamedParameterNamedStreamWState,250,230,150)),
          Condition.equals(name: TABLET, value: _getLoginFromFiveParametersTwo(context,dataForNamedParameterNamedStreamWState,300,280,170)),
          Condition.equals(name: DESKTOP, value: _getLoginFromFiveParametersTwo(context,dataForNamedParameterNamedStreamWState,400,380,200)),
        ]
    ).value ?? Container();
    switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForLoginView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForLoginView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}")));
      case EnumDataForLoginView.login:
        return value;
      default:
        return Container();
    }
  }

  Widget _getLoginFromFiveParametersTwo(BuildContext context,DataForLoginView dataForNamedParameterNamedStreamWState,double sizedBoxWidthLogin,double discordButtonWidth,double sizedBoxHeightTermsOfUse) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: sizedBoxWidthLogin,
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: sizedBoxHeightTermsOfUse,
                        child: RawScrollbar(
                          controller: _scrollController,
                          thumbColor: Theme.of(context).colorScheme.secondary,
                          radius: const Radius.circular(20),
                          thickness: 5,
                          thumbVisibility: true,
                          child: SingleChildScrollView(
                            controller: _scrollController,
                            child: Card(
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(dataForNamedParameterNamedStreamWState.termsOfUse),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Theme(
                              data: ThemeData.dark().copyWith(
                                unselectedWidgetColor: Theme.of(context).colorScheme.secondary,
                              ),
                              child: Checkbox(
                                  checkColor: Theme.of(context).colorScheme.secondary,
                                  activeColor: Theme.of(context).colorScheme.primary,
                                  value: dataForNamedParameterNamedStreamWState.isCheckAgreeTermsOfUse,
                                  onChanged: (value) {
                                    _loginViewModel.setCheckAgreeTermsOfUse(value);
                                  }),
                            ),
                            const Flexible(child: Text("I agree to the terms of use of 'TOPDBD'",)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5,),
                      dataForNamedParameterNamedStreamWState.isCheckAgreeTermsOfUse ? SignInButton(
                        width: discordButtonWidth,
                        button: Button.Discord,
                        text: 'Sign in with Discord',
                        onPressed: () {
                          _loginViewModel.signInWithDiscord((){},(msg){});
                        },
                      ) : Container(),
                      const SizedBox(height: 5,),
                    ],),),),
            ],),),),);
  }

  Future<void> _initParameterLoginViewModel()
  async {
    _loginViewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _loginViewModel
        .init();
    debugPrint("LoginView: $result");
    if(!mounted) {
      return;
    }
    _loginViewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}