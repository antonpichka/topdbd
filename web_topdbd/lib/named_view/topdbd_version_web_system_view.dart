import 'package:flutter/material.dart';
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
    // TODO: implement build
    throw UnimplementedError();
  }

  void _init() {

  }
}