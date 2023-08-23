import 'package:custom_signin_buttons/custom_signin_buttons.dart';
import 'package:flutter/material.dart';
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
    return _buildLogin(context, 400,380);
  }

  Widget _buildLogin(BuildContext context,double sizedBoxWidth,double discordButtonWidth) {
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
                      const Card(
                        color: Colors.black,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("OPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPPOPPP"),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("By clicking on the login button you agree to the 'Terms of Use 'TOPDBD' '"),
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
    final result = await InitializeServiceUtility.init();
    debugPrint(result);
    if(!mounted) {
      return;
    }
  }
}