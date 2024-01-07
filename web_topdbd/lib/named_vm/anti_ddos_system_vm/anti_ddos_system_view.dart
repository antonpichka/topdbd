import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/anti_ddos_system_vm/enum_data_for_anti_ddos_system_view.dart';
import 'package:web_topdbd/named_vm/anti_ddos_system_vm/test_anti_ddos_system_view_model.dart';

final class AntiDDosSystemView extends StatefulWidget {
  final Widget namedView;

  const AntiDDosSystemView(this.namedView);

  @override
  State<AntiDDosSystemView> createState() => _AntiDDosSystemViewState();
}

final class _AntiDDosSystemViewState extends State<AntiDDosSystemView> {
  /// RELEASE CODE
  // late final AntiDDosSystemViewModel _viewModel;
  /// TEST CODE
  late final TestAntiDDosSystemViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = AntiDDosSystemViewModel();
    /// TEST CODE
    _viewModel = TestAntiDDosSystemViewModel();
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
    final dataForNamedParameterNamedStreamWState =
        _viewModel.getDataForNamedParameterNamedStreamWState;
    switch (dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForAntiDDosSystemView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForAntiDDosSystemView.exception:
        return Scaffold(
            body: Center(
                child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}")
            ));
      case EnumDataForAntiDDosSystemView.waiting:
        return Scaffold(
            body: Center(
              child: SingleChildScrollView(
                  child: Card(
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text("AntiDDosSystem",
                              style: Theme.of(context).textTheme.titleMedium,),
                            Text(dataForNamedParameterNamedStreamWState.showSeconds),
                          ],
                        ),
                      ))
              ),
            ));
      case EnumDataForAntiDDosSystemView.success:
        return Scaffold(
            body: SingleChildScrollView(
                child: widget.namedView
            ));
    }
  }

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _viewModel.init();
    debugPrint("AntiDDosSystemView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.startTimer();
  }
}