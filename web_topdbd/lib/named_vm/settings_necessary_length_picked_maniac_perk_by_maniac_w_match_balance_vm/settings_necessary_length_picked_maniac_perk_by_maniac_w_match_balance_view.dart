import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_vm/enum_data_for_settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_vm/test_settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_view_model.dart';

final class SettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView extends StatefulWidget {
  const SettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView(Key key) : super(key: key);

  @override
  State<SettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView> createState() => _SettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceViewState();
}

final class _SettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceViewState extends State<SettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView> {
  /// RELEASE CODE
  // late final SettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceViewModel _viewModel;
  /// TEST CODE
  late final TestSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = SettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceViewModel();
    /// TEST CODE
    _viewModel = TestSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceViewModel();
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
      case EnumDataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView.isLoading:
        return const Center(child: CircularProgressIndicator());
      case EnumDataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView.success:
        return Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 8.0),
          child: TextFormField(
              initialValue: dataForNamedParameterNamedStreamWState
                  .necessaryLengthPickedManiacPerkByManiacWMatchBalance
                  .toString(),
              decoration: const InputDecoration(labelText: "How many maniac perks should be picked ?"),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              onChanged: (String? value) {
                _viewModel.setNecessaryLengthPickedManiacPerkByManiacWMatchBalance(value);
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
    debugPrint("SettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}