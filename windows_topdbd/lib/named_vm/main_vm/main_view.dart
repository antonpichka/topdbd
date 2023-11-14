import 'package:flutter/material.dart';
import 'package:windows_topdbd/named_vm/main_vm/test_main_view_model.dart';

final class MainView extends StatefulWidget {
  @override
  State<MainView> createState() => _MainViewState();
}

final class _MainViewState extends State<MainView> {
  /// RELEASE CODE
  // late final MainViewModel _mainViewModel;
  /// TEST CODE
  late final TestMainViewModel _mainViewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _mainViewModel = MainViewModel();
    /// TEST CODE
    _mainViewModel = TestMainViewModel();
    super.initState();
    _initParameterMainViewModel();
  }

  @override
  void dispose() {
    _mainViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text("Hello World")),
    );
  }

  Future<void> _initParameterMainViewModel() async {
    _mainViewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _mainViewModel.init();
    debugPrint("MainView: $result");
    if(!mounted) {
      return;
    }
    _mainViewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}