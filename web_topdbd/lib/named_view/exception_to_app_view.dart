import 'package:flutter/material.dart';
import 'package:web_topdbd/named_view_list_view_model/exception_to_app_view_list_view_moel.dart';

final class ExceptionToAppView extends StatefulWidget {
  final String msgException;

  const ExceptionToAppView(this.msgException);

  @override
  State<ExceptionToAppView> createState() => _ExceptionToAppViewState();
}

final class _ExceptionToAppViewState extends State<ExceptionToAppView> {
  late final ExceptionToAppViewListViewModel _exceptionToAppViewListViewModel;

  @override
  void initState() {
    _exceptionToAppViewListViewModel = ExceptionToAppViewListViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _exceptionToAppViewListViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Text("Exception: ${widget.msgException}")));
  }

  Future<void> _init()
  async {
    final result = await _exceptionToAppViewListViewModel.init();
    debugPrint("ExceptionToAppView: $result");
    if(!mounted) {
      return;
    }
  }
}