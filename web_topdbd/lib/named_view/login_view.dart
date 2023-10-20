import 'package:custom_signin_buttons/custom_signin_buttons.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/data_for_login_view.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/enum_data_for_login_view.dart';
import 'package:web_topdbd/named_view_q_view_model/login_view_q_view_model.dart';

final class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

final class _LoginViewState extends State<LoginView> {
  late final LoginViewQViewModel _loginViewQViewModel;
  late final ScrollController _scrollController;

  @override
  void initState() {
    _loginViewQViewModel = LoginViewQViewModel();
    _scrollController = ScrollController();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _loginViewQViewModel.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForNamed = _loginViewQViewModel.getDataForNamed;
    final login = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: _buildLogin(context,dataForNamed,250,230,150)),
          Condition.equals(name: TABLET, value: _buildLogin(context,dataForNamed,300,280,170)),
          Condition.equals(name: DESKTOP, value: _buildLogin(context,dataForNamed,400,380,200)),
        ]
    ).value ?? Container();
    switch(dataForNamed.getEnumDataForNamed) {
      case EnumDataForLoginView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForLoginView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForNamed.exceptionController.getKeyParameterException}")));
      case EnumDataForLoginView.login:
        return login;
      default:
        return Container();
    }
  }

  Widget _buildLogin(BuildContext context,DataForLoginView dataForNamed,double sizedBoxWidthLogin,double discordButtonWidth,double sizedBoxHeightTermsOfUse) {
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
                                child: Text(dataForNamed.termsOfUse),
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
                                  value: dataForNamed.isCheckAgreeTermsOfUse,
                                  onChanged: (value) {
                                    _loginViewQViewModel.check(value);
                                  }),
                            ),
                            const Flexible(child: Text("I agree to the terms of use of 'TOPDBD'",)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5,),
                      dataForNamed.isCheckAgreeTermsOfUse ? SignInButton(
                        width: discordButtonWidth,
                        button: Button.Discord,
                        text: 'Sign in with Discord',
                        onPressed: () {
                          _loginViewQViewModel.signInWithDiscord((){},(messageException){});
                        },
                      ) : Container(),
                      const SizedBox(height: 5,),
                    ],),),),
            ],),),),);
  }

  Future<void> _init()
  async {
    _loginViewQViewModel
        .getStreamDataForNamed
        .listen((event) {
          setState(() {});
        });
    final result = await _loginViewQViewModel
        .init();
    debugPrint("LoginView: $result");
    if(!mounted) {
      return;
    }
    _loginViewQViewModel.notifyStreamDataForNamed();
  }
}