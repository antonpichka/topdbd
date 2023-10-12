import 'package:flutter/material.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/enum_data_for_defined_view.dart';
import 'package:web_topdbd/named_utility/navigation_utility.dart';
import 'package:web_topdbd/named_view/login_view.dart';
import 'package:web_topdbd/named_view/pre_verified_user_system_view.dart';
import 'package:web_topdbd/named_view/verified_user_system_view.dart';
import 'package:web_topdbd/named_view_list_view_model/defined_view_list_view_model.dart';

final class DefinedView extends StatefulWidget {
  final NavigationUtility navigationUtility;

  const DefinedView(this.navigationUtility);

  @override
  State<DefinedView> createState() => _DefinedViewState();
}

final class _DefinedViewState extends State<DefinedView> {
  late final DefinedViewListViewModel _definedViewListViewModel;

  @override
  void initState() {
    _definedViewListViewModel = DefinedViewListViewModel(widget.navigationUtility);
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
    switch(dataForDefinedView?.getEnumDataForDefinedView) {
      case EnumDataForDefinedView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForDefinedView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForDefinedView?.exceptionController.getKeyParameterException}")));
      case EnumDataForDefinedView.login:
        return LoginView();
      case EnumDataForDefinedView.preSuccess:
        return PreVerifiedUserSystemView(widget.navigationUtility.enumNavigationUtility);
      case EnumDataForDefinedView.success:
        return VerifiedUserSystemView(widget.navigationUtility.enumNavigationUtility);
      default:
        return Container();
    }
  }

  Future<void> _init()
  async {
    _definedViewListViewModel
        .getStreamDataForDefinedView
        .listen((event) {
          setState(() {});
        });
    final result = await _definedViewListViewModel.initForDefinedView();
    debugPrint("DefinedView: $result");
    if(!mounted) {
      return;
    }
    _definedViewListViewModel.notifyStreamDataForDefinedView();
  }
}