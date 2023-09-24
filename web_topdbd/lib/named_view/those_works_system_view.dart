import 'package:flutter/material.dart';
import 'package:web_topdbd/data_for_named/data_for_those_works_system_view/enum_data_for_those_works_system_view.dart';
import 'package:web_topdbd/named_view/topdbd_version_web_system_view.dart';
import 'package:web_topdbd/named_view_list_view_model/those_works_system_view_list_view_model.dart';

final class ThoseWorksSystemView extends StatefulWidget {
  @override
  State<ThoseWorksSystemView> createState() => _ThoseWorksSystemViewState();
}

final class _ThoseWorksSystemViewState extends State<ThoseWorksSystemView> {
  late final ThoseWorksSystemViewListViewModel _thoseWorksSystemViewListViewModel;

  @override
  void initState() {
    _thoseWorksSystemViewListViewModel = ThoseWorksSystemViewListViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _thoseWorksSystemViewListViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForThoseWorksSystemView = _thoseWorksSystemViewListViewModel.getDataForThoseWorksSystemView;
    switch(dataForThoseWorksSystemView?.getEnumDataForThoseWorksSystemView) {
      case EnumDataForThoseWorksSystemView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForThoseWorksSystemView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForThoseWorksSystemView?.exceptionController.getKeyParameterException}")));
      case EnumDataForThoseWorksSystemView.thoseWorks:
        return const Scaffold(body: Center(child: Text("Engineering works. Check back later")));
      case EnumDataForThoseWorksSystemView.success:
        return TOPDBDVersionWebSystemView();
      default:
        return Container();
    }
  }

  void _init() {
    _thoseWorksSystemViewListViewModel
        .getStreamDataForThoseWorksSystemView
        .listen((event) {
          setState(() {});
        });
    _thoseWorksSystemViewListViewModel.listeningStreamsFirebaseFirestoreServiceForThoseWorksSystemView();
    final result = _thoseWorksSystemViewListViewModel.initForThoseWorksSystemView();
    debugPrint("ThoseWorksSystemView: $result");
    if(!mounted) {
      return;
    }
    _thoseWorksSystemViewListViewModel.notifyStreamDataForThoseWorksSystemView();
  }
}