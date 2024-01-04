import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_survivor_perk_by_maniac_w_match_balance_vm/enum_data_for_settings_necessary_length_picked_survivor_perk_by_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_survivor_perk_by_maniac_w_match_balance_vm/test_settings_necessary_length_picked_survivor_perk_by_maniac_w_match_balance_view_model.dart';

final class SettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceView extends StatefulWidget {
  const SettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceView(Key key) : super(key: key);

  @override
  State<SettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceView> createState() => _SettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceViewState();
}

final class _SettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceViewState extends State<SettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceView> {
  /// RELEASE CODE
  // late final SettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceViewModel _viewModel;
  /// TEST CODE
  late final TestSettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = SettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceViewModel();
    /// TEST CODE
    _viewModel = TestSettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceViewModel();
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
      case EnumDataForSettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceView.isLoading:
        return const Center(child: CircularProgressIndicator());
      case EnumDataForSettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForSettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceView.success:
        return Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 8.0),
          child: TextFormField(
              initialValue: dataForNamedParameterNamedStreamWState
                  .necessaryLengthPickedSurvivorPerkByManiacWMatchBalance
                  .toString(),
              decoration: const InputDecoration(labelText: "How many survivor perks should be picked ?"),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              onChanged: (String? value) {
                _viewModel.setNecessaryLengthPickedSurvivorPerkByManiacWMatchBalance(value);
              }),
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
    debugPrint("SettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}