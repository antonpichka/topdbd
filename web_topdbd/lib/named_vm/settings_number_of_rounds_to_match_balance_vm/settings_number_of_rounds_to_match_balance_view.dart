import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:web_topdbd/named_vm/settings_number_of_rounds_to_match_balance_vm/enum_data_for_settings_number_of_rounds_to_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_number_of_rounds_to_match_balance_vm/test_settings_number_of_rounds_to_match_balance_view_model.dart';

final class SettingsNumberOfRoundsToMatchBalanceView extends StatefulWidget {
  @override
  State<SettingsNumberOfRoundsToMatchBalanceView> createState() => _SettingsNumberOfRoundsToMatchBalanceViewState();
}

final class _SettingsNumberOfRoundsToMatchBalanceViewState extends State<SettingsNumberOfRoundsToMatchBalanceView> {
  /// RELEASE CODE
  // late final SettingsNumberOfRoundsToMatchBalanceViewModel _viewModel;
  /// TEST CODE
  late final TestSettingsNumberOfRoundsToMatchBalanceViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = SettingsNumberOfRoundsToMatchBalanceViewModel();
    /// TEST CODE
    _viewModel = TestSettingsNumberOfRoundsToMatchBalanceViewModel();
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
      case EnumDataForSettingsNumberOfRoundsToMatchBalanceView.isLoading:
        return const Center(child: CircularProgressIndicator(),);
      case EnumDataForSettingsNumberOfRoundsToMatchBalanceView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForSettingsNumberOfRoundsToMatchBalanceView.success:
        return SizedBox(
          width: double.infinity,
          child: Card(
              child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        initialValue: dataForNamedParameterNamedStreamWState
                            .numberOfRoundsByMatchBalance
                            .toString(),
                        decoration: const InputDecoration(labelText: "Number of Rounds"),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        onChanged: (String value) {
                          _viewModel.setNumberOfRoundsByMatchBalance(value);
                        }),
                  ))),
        );
    }
  }

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _viewModel.init();
    debugPrint("SettingsNumberOfRoundsToMatchBalanceView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}