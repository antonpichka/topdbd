import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/enum_data_for_defined_view.dart';
import 'package:web_topdbd/named_view/login_view.dart';
import 'package:web_topdbd/named_view/main_view.dart';
import 'package:web_topdbd/named_view_list_view_model/defined_view_list_view_model.dart';

final class DefinedView extends StatefulWidget {
  @override
  State<DefinedView> createState() => _DefinedViewState();
}

final class _DefinedViewState extends State<DefinedView> {
  late final DefinedViewListViewModel _definedViewListViewModel;

  @override
  void initState() {
    _definedViewListViewModel = DefinedViewListViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _definedViewListViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForDefinedView = _definedViewListViewModel.getDataForDefinedView;
    final notVerifiedUser = ResponsiveValue<Widget>(
        context,
        defaultValue: _buildNotVerifiedUser(context,24),
        conditionalValues: [
          Condition.equals(name: TABLET, value: _buildNotVerifiedUser(context,24)),
          Condition.largerThan(name: TABLET, value: _buildNotVerifiedUser(context,40)),
          Condition.smallerThan(name: TABLET, value: _buildNotVerifiedUser(context,18))
        ]
    ).value;
    switch(dataForDefinedView?.getEnumDataForDefinedView) {
      case EnumDataForDefinedView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForDefinedView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForDefinedView?.exceptionController.getKeyParameterException}")));
      case EnumDataForDefinedView.loginView:
        return LoginView();
      case EnumDataForDefinedView.notVerifiedUser:
        return notVerifiedUser!;
      case EnumDataForDefinedView.success:
        return MainView();
      default:
        return Container();
    }
  }

  Widget _buildNotVerifiedUser(BuildContext context,double textSize) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Column(
                children: [
                  Text(
                    "You are not a verified user",
                    style: TextStyle(
                      fontSize: textSize,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.8,
                    ),
                  ),
                ])
        ),
      ),
    );
  }

  Future<void> _init()
  async {
    _definedViewListViewModel
        .getStreamDataForDefinedView
        ?.listen((event) {
          setState(() {});
        });
    _definedViewListViewModel.listeningStreamsTempCacheServiceForDefinedView();
    final result = await _definedViewListViewModel.initForDefinedView();
    debugPrint("DefinedView: $result");
    if(!mounted) {
      return;
    }
    _definedViewListViewModel.notifyStreamDataForDefinedView();
  }
}