import 'package:flutter/material.dart';
import 'package:windows_topdbd/named_vm/main_vm/test_main_view_model.dart';

final class MainView extends StatefulWidget {
  @override
  State<MainView> createState() => _MainViewState();
}

final class _MainViewState extends State<MainView> {
  /// RELEASE CODE
  // late final MainViewModel _viewModel;
  /// TEST CODE
  late final TestMainViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = MainViewModel();
    /// TEST CODE
    _viewModel = TestMainViewModel();
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
    return const Scaffold(
      body: Center(
          child: Text("Hello World")),
    );
  }

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _viewModel.init();
    debugPrint("MainView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}