import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';
import 'package:web_topdbd/named_vm/auth_drawer_vm/enum_data_for_auth_drawer_view.dart';
import 'package:web_topdbd/named_vm/auth_drawer_vm/test_auth_drawer_view_model.dart';

final class AuthDrawerView extends StatefulWidget {
  @override
  State<AuthDrawerView> createState() => _AuthDrawerViewState();
}

final class _AuthDrawerViewState extends State<AuthDrawerView> {
  /// RELEASE CODE
  // late final AuthDrawerViewModel _viewModel;
  /// TEST CODE
  late final TestAuthDrawerViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = AuthDrawerViewModel();
    /// TEST CODE
    _viewModel = TestAuthDrawerViewModel();
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
    switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForAuthDrawerView.isLoading:
        return Container();
      case EnumDataForAuthDrawerView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForAuthDrawerView.success:
        return Column(
          children: [
            ListTile(
              title: Text(dataForNamedParameterNamedStreamWState.getStringWhereSubstringFromEndParameterUsernameByDiscordUser(9),
                style: Theme.of(context).textTheme.bodyMedium,),
              leading: Image.asset(
                  dataForNamedParameterNamedStreamWState
                      .getCountryRDWhereListCountryRDWReadyDataUtilityParameterOne
                      .pathToTheIcon,
                  width: 32,
                  height: 32,
                  fit: BoxFit.cover),
              tileColor: Theme.of(context).colorScheme.surface,
              onTap: () {
                _viewModel.clickOnMyUser((p1)=> WebNavigationUtility
                    .goWhereChangeUrlAddressAndNewViewFromTwo(context,KeysNavigationUtility.getUserQQIdFromId(p1)));
              },),
            const SizedBox(height: 2,),
            ListTile(
              title: const Text("Logout"),
              leading: const Icon(Icons.logout),
              tileColor: Theme.of(context).colorScheme.surface,
              onTap: () {
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
                                _viewModel.logout(()=> WebNavigationUtility
                                    .goWhereChangeUrlAddressAndNewViewFromTwo(context,KeysNavigationUtility.home));
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
              },),
            const SizedBox(height: 2,),
            ListTile(
              title: const Text("Download"),
              leading: const Icon(Icons.download),
              tileColor: Theme.of(context).colorScheme.surface,
              onTap: () {
                _viewModel.download();
              },),
          ],);
    }
  }

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _viewModel.init();
    debugPrint("AuthDrawerView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}