import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_vm/enum_data_for_settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_vm/test_settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_view_model.dart';

final class SettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView extends StatefulWidget {
  final ManiacWMatchBalance selectedItemManiacWMatchBalance;

  const SettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView(this.selectedItemManiacWMatchBalance);

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
    // _viewModel = SettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceViewModel(widget.selectedItemManiacWMatchBalance.name,widget.selectedItemManiacWMatchBalance.necessaryLengthPickedManiacPerk,widget.selectedItemManiacWMatchBalance.listManiacPerkWMatchBalance.listModel.length);
    /// TEST CODE
    _viewModel = TestSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceViewModel(widget.selectedItemManiacWMatchBalance.name, widget.selectedItemManiacWMatchBalance.necessaryLengthPickedManiacPerk, widget.selectedItemManiacWMatchBalance.listManiacPerkWMatchBalance.listModel.length);
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
        return DropdownButton<int>(
            value: dataForNamedParameterNamedStreamWState.necessaryLengthPickedManiacPerkByManiacWMatchBalance,
            items: dataForNamedParameterNamedStreamWState
                .getListIntWhereLocalLengthLessThanParameterLengthByListManiacPerkWMatchBalance
                .map((e) => DropdownMenuItem<int>(child: Center(child: Text("$e"))))
                .toList(),
            onChanged: (int? value) {
              _viewModel.onChangedToDropdownButton(value);
            });
    }
  }

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    _viewModel.listeningTempCacheService();
    final result = await _viewModel.init();
    debugPrint("SettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}