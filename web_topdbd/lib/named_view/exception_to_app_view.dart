import 'package:flutter/material.dart';
import 'package:web_topdbd/named_view_model/exception_to_app_view_moel.dart';

final class ExceptionToAppView extends StatefulWidget {
  final String msgException;

  const ExceptionToAppView(this.msgException);

  @override
  State<ExceptionToAppView> createState() => _ExceptionToAppViewState();
}

final class _ExceptionToAppViewState extends State<ExceptionToAppView> {
  late final ExceptionToAppViewModel _exceptionToAppViewModel;

  @override
  void initState() {
    _exceptionToAppViewModel = ExceptionToAppViewModel();
    super.initState();
    _initParameterExceptionToAppViewModel();
  }

  @override
  void dispose() {
    _exceptionToAppViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Text("Exception: ${widget.msgException}")));
  }

  Future<void> _initParameterExceptionToAppViewModel()
  async {
    final result = await _exceptionToAppViewModel.init();
    debugPrint("ExceptionToAppView: $result");
    if(!mounted) {
      return;
    }
  }
}