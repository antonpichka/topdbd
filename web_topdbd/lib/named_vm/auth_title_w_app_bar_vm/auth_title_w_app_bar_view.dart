import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';
import 'package:web_topdbd/named_vm/auth_title_w_app_bar_vm/enum_data_for_auth_title_w_app_bar_view.dart';
import 'package:web_topdbd/named_vm/auth_title_w_app_bar_vm/test_auth_title_w_app_bar_view_model.dart';

final class AuthTitleWAppBarView extends StatefulWidget {
  @override
  State<AuthTitleWAppBarView> createState() => _AuthTitleWAppBarViewState();
}

final class _AuthTitleWAppBarViewState extends State<AuthTitleWAppBarView> {
  /// RELEASE CODE
  // late final AuthTitleWAppBarViewModel _authTitleWAppBarViewModel;
  /// TEST CODE
  late final TestAuthTitleWAppBarViewModel _authTitleWAppBarViewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _authTitleWAppBarViewModel = AuthTitleWAppBarViewModel();
    /// TEST CODE
    _authTitleWAppBarViewModel = TestAuthTitleWAppBarViewModel();
    super.initState();
    _initParameterAuthTitleWAppBarViewModel();
  }

  @override
  void dispose() {
    _authTitleWAppBarViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForNamedParameterNamedStreamWState = _authTitleWAppBarViewModel.getDataForNamedParameterNamedStreamWState;
    switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForAuthTitleWAppBarView.isLoading:
        return Container();
      case EnumDataForAuthTitleWAppBarView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForAuthTitleWAppBarView.success:
        return Row(
          children: [
            Expanded(
              child: Tooltip(
                message: dataForNamedParameterNamedStreamWState.usernameByDiscordUser,
                child: ListTile(
                  onTap: () {
                    _authTitleWAppBarViewModel.clickOnMyUser((p1)=> WebNavigationUtility
                        .goWhereChangeUrlAddressAndNewViewFromTwo(context,KeysNavigationUtility.getNavigationUserViewQQUserQQIdFromId(p1)));
                  },
                  leading: Image.asset(
                      dataForNamedParameterNamedStreamWState
                          .getCountryRDWhereListCountryRDWReadyDataUtilityParameterOne
                          .pathToTheIcon,
                      width: 32,
                      height: 32,
                      fit: BoxFit.cover),
                  title: Text(dataForNamedParameterNamedStreamWState.getStringWhereSubstringParameterUsernameByDiscordUser,
                    style: Theme.of(context).textTheme.bodyMedium,),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Wrap(
                  children: [
                    Tooltip(
                      message: "Logout",
                      child: Ink(
                        decoration: const ShapeDecoration(
                            shape: CircleBorder()
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.logout,
                          ),
                          iconSize: 30,
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return CupertinoAlertDialog(
                                    content: Text("Are you sure you want to log out of your account ?",
                                        style: Theme.of(context).textTheme.bodyMedium),
                                    actions: [
                                      CupertinoDialogAction(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            _authTitleWAppBarViewModel.logout(()=> WebNavigationUtility
                                                .goWhereChangeUrlAddressAndNewViewFromTwo(context,KeysNavigationUtility.navigationViewQQHome));
                                          },
                                          child: Text("Yes",
                                              style: Theme.of(context).textTheme.bodyMedium)),
                                      CupertinoDialogAction(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text("No",
                                            style: Theme.of(context).textTheme.bodyMedium,)),
                                    ],
                                  );
                                });
                          },
                        ),
                      ),
                    ),
                    Tooltip(
                      message: "Download",
                      child: Ink(
                        decoration: const ShapeDecoration(
                            shape: CircleBorder()
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.download,
                          ),
                          iconSize: 30,
                          onPressed: () {
                            _authTitleWAppBarViewModel.download();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],);
    }
  }

  Future<void> _initParameterAuthTitleWAppBarViewModel() async {
    _authTitleWAppBarViewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _authTitleWAppBarViewModel.init();
    debugPrint("AuthTitleWAppBarView: $result");
    if(!mounted) {
      return;
    }
    _authTitleWAppBarViewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}