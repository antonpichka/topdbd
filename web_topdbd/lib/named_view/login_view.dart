import 'package:custom_signin_buttons/custom_signin_buttons.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/data_for_login_view.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/enum_data_for_login_view.dart';
import 'package:web_topdbd/named_utility/initialize_service_utility.dart';
import 'package:web_topdbd/named_view_list_view_model/login_view_list_view_model.dart';

final class LoginView
    extends StatefulWidget
{
  @override
  State<LoginView> createState() => _LoginViewState();
}

final class _LoginViewState
    extends State<LoginView>
{
  late final LoginViewListViewModel _loginViewListViewModel;

  @override
  void initState() {
    _loginViewListViewModel = LoginViewListViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _loginViewListViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForLoginView = _loginViewListViewModel.getDataForLoginView;
    final login = ResponsiveValue<Widget>(
        context,
        defaultValue: _buildLogin(context,dataForLoginView,300,280),
        conditionalValues: [
          Condition.equals(name: TABLET, value: _buildLogin(context,dataForLoginView,300,280)),
          Condition.largerThan(name: TABLET, value: _buildLogin(context,dataForLoginView,400,380)),
          Condition.smallerThan(name: TABLET, value: _buildLogin(context,dataForLoginView,200,180))
        ]
    ).value;
    switch(dataForLoginView?.getEnumDataForLoginView) {
      case EnumDataForLoginView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForLoginView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForLoginView?.exceptionController.getKeyParameterException}")));
      case EnumDataForLoginView.login:
        return login!;
      default:
        return Container();
    }
  }

  Widget _buildLogin(BuildContext context,DataForLoginView? dataForLoginView,double sizedBoxWidth,double discordButtonWidth) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: sizedBoxWidth,
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Card(
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(dataForLoginView?.termsOfUse ?? ""),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("By clicking on the login button you agree to the 'Terms of Use 'TOPDBD' '",),
                      ),
                      const SizedBox(height: 5,),
                      SignInButton(
                        width: discordButtonWidth,
                        button: Button.Discord,
                        text: 'Sign in with Discord',
                        onPressed: () {
                          _loginViewListViewModel.signInWithDiscordForLoginView();
                        },
                      ),
                      const SizedBox(height: 5,),
                    ],),),),
            ],),),),);
  }

  Future<void> _init()
  async {
    _loginViewListViewModel
        .getStreamDataForLoginView
        ?.listen((event) {
          setState(() {});
        });
    final result = await InitializeServiceUtility.init();
    final resultTwo = await _loginViewListViewModel
        .initForLoginView();
    debugPrint("LoginView: $result | $resultTwo");
    if(!mounted) {
      return;
    }
    _loginViewListViewModel
        .notifyStreamDataForLoginView();
  }
}