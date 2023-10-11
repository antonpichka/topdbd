import 'package:flutter/material.dart';
import 'package:web_topdbd/data_for_named/data_for_pre_verified_user_system_view/enum_data_for_pre_verified_user_system_view.dart';
import 'package:web_topdbd/named_utility/enum_navigation_utility.dart';
import 'package:web_topdbd/named_view/verified_user_system_view.dart';
import 'package:web_topdbd/named_view_list_view_model/pre_verified_user_system_view_list_view_model.dart';

final class PreVerifiedUserSystemView extends StatefulWidget {
  final EnumNavigationUtility enumNavigationUtility;

  const PreVerifiedUserSystemView(this.enumNavigationUtility);

  @override
  State<PreVerifiedUserSystemView> createState() => _PreVerifiedUserSystemViewState();
}

final class _PreVerifiedUserSystemViewState extends State<PreVerifiedUserSystemView> {
  late final PreVerifiedUserSystemViewListViewModel _preVerifiedUserSystemViewListViewModel;

  @override
  void initState() {
    _preVerifiedUserSystemViewListViewModel = PreVerifiedUserSystemViewListViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _preVerifiedUserSystemViewListViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForPreVerifiedUserSystemView = _preVerifiedUserSystemViewListViewModel.getDataForPreVerifiedUserSystemView;
    switch(dataForPreVerifiedUserSystemView?.getEnumDataForPreVerifiedUserSystemView) {
      case EnumDataForPreVerifiedUserSystemView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForPreVerifiedUserSystemView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForPreVerifiedUserSystemView?.exceptionController.getKeyParameterException}")));
      case EnumDataForPreVerifiedUserSystemView.otherException:
        return Scaffold(body: Center(child: Text("${dataForPreVerifiedUserSystemView?.otherException}")));
      case EnumDataForPreVerifiedUserSystemView.success:
        return VerifiedUserSystemView(widget.enumNavigationUtility);
      default:
        return Container();
    }
  }

  Future<void> _init()
  async {
    _preVerifiedUserSystemViewListViewModel
        .getStreamDataForPreVerifiedUserSystemView
        .listen((event) {
          setState(() {});
        });
    final result = await _preVerifiedUserSystemViewListViewModel
        .initForPreVerifiedUserSystemView();
    debugPrint("PreVerifiedUserSystemView: $result");
    if(!mounted) {
      return;
    }
    _preVerifiedUserSystemViewListViewModel.notifyStreamDataForPreVerifiedUserSystemView();
  }
}