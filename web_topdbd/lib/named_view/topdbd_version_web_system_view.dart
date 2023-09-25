import 'package:flutter/material.dart';
import 'package:web_topdbd/data_for_named/data_for_topdbd_version_web_system_view/enum_data_for_topdbd_version_web_system_view.dart';
import 'package:web_topdbd/named_view/defined_view.dart';
import 'package:web_topdbd/named_view_list_view_model/topdbd_version_web_system_view_list_view_model.dart';

final class TOPDBDVersionWebSystemView extends StatefulWidget {
  @override
  State<TOPDBDVersionWebSystemView> createState() => _TOPDBDVersionWebSystemViewState();
}

final class _TOPDBDVersionWebSystemViewState extends State<TOPDBDVersionWebSystemView> {
  late final TOPDBDVersionWebSystemViewListViewModel _tOPDBDVersionWebSystemViewListViewModel;

  @override
  void initState() {
    _tOPDBDVersionWebSystemViewListViewModel = TOPDBDVersionWebSystemViewListViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _tOPDBDVersionWebSystemViewListViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForTOPDBDVersionWebSystemView = _tOPDBDVersionWebSystemViewListViewModel.getDataForTOPDBDVersionWebSystemView;
    switch(dataForTOPDBDVersionWebSystemView?.getEnumDataForTOPDBDVersionWebSystemView) {
      case EnumDataForTOPDBDVersionWebSystemView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForTOPDBDVersionWebSystemView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForTOPDBDVersionWebSystemView?.exceptionController.getKeyParameterException}")));
      case EnumDataForTOPDBDVersionWebSystemView.isNotValidVersionTOPDBDVersionWeb:
        return Scaffold(body: Center(child: Text("The site version has been changed. Check back later (Version: ${dataForTOPDBDVersionWebSystemView?.versionByTOPDBDVersionWeb})")));
      case EnumDataForTOPDBDVersionWebSystemView.success:
        return DefinedView();
      default:
        return Container();
    }
  }

  void _init() {
    _tOPDBDVersionWebSystemViewListViewModel
        .getStreamDataForTOPDBDVersionWebSystemView
        .listen((event) {
          setState(() {});
        });
    _tOPDBDVersionWebSystemViewListViewModel.listeningStreamsFirebaseFirestoreServiceForTOPDBDVersionWebSystemView();
    final result = _tOPDBDVersionWebSystemViewListViewModel.initForTOPDBDVersionWebSystemView();
    debugPrint("TOPDBDVersionWebSystemView: $result");
    if(!mounted) {
      return;
    }
    _tOPDBDVersionWebSystemViewListViewModel.notifyStreamDataForTOPDBDVersionWebSystemView();

  }
}