import 'package:flutter/material.dart';
import 'package:web_topdbd/data_for_named/data_for_initialize_service_system_view/enum_data_for_initialize_service_system_view.dart';
import 'package:web_topdbd/named_view/those_works_system_view.dart';
import 'package:web_topdbd/named_view_list_view_model/initialize_service_system_view_list_view_model.dart';

final class InitializeServiceSystemView extends StatefulWidget {
  @override
  State<InitializeServiceSystemView> createState() => _InitializeServiceSystemViewState();
}

final class _InitializeServiceSystemViewState extends State<InitializeServiceSystemView> {
  late final InitializeServiceSystemViewListViewModel _initializeServiceSystemViewListViewModel;

  @override
  void initState() {
    _initializeServiceSystemViewListViewModel = InitializeServiceSystemViewListViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _initializeServiceSystemViewListViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForInitializeServiceSystemView = _initializeServiceSystemViewListViewModel.getDataForInitializeServiceSystemView;
    switch(dataForInitializeServiceSystemView?.getEnumDataForInitializeServiceSystemView) {
      case EnumDataForInitializeServiceSystemView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForInitializeServiceSystemView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForInitializeServiceSystemView?.exceptionController.getKeyParameterException}")));
      case EnumDataForInitializeServiceSystemView.success:
        return ThoseWorksSystemView();
      default:
        return Container();
    }
  }

  Future<void> _init()
  async {
    _initializeServiceSystemViewListViewModel
        .getStreamDataForInitializeServiceSystemView
        .listen((event) {
          setState(() {});
        });
    final result = await _initializeServiceSystemViewListViewModel.initForInitializeServiceSystemView();
    debugPrint("InitializeServiceSystemView: $result");
    if(!mounted) {
      return;
    }
    _initializeServiceSystemViewListViewModel.notifyStreamDataForInitializeServiceSystemView();
  }
}