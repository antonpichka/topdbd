import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/settings_item_maniac_w_match_balance_vm/enum_data_for_settings_item_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_item_maniac_w_match_balance_vm/test_settings_item_maniac_w_match_balance_view_model.dart';
import 'package:web_topdbd/named_vm/settings_list_maniac_perks_w_match_balance_vm/settings_list_maniac_perks_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_maps_w_match_balance_vm/settings_list_maps_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_survivor_perks_w_match_balance_vm/settings_list_survivor_perks_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_vm/settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_survivor_perk_by_maniac_w_match_balance_vm/settings_necessary_length_picked_survivor_perk_by_maniac_w_match_balance_view.dart';

final class SettingsItemManiacWMatchBalanceView extends StatefulWidget {
  @override
  State<SettingsItemManiacWMatchBalanceView> createState() => _SettingsItemManiacWMatchBalanceViewState();
}

final class _SettingsItemManiacWMatchBalanceViewState extends State<SettingsItemManiacWMatchBalanceView> {
  /// RELEASE CODE
  // late final SettingsItemManiacWMatchBalanceViewModel _viewModel;
  /// TEST CODE
  late final TestSettingsItemManiacWMatchBalanceViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = SettingsItemManiacWMatchBalanceViewModel();
    /// TEST CODE
    _viewModel = TestSettingsItemManiacWMatchBalanceViewModel();
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
      case EnumDataForSettingsItemManiacWMatchBalanceView.isLoading:
        return const Center(child: CircularProgressIndicator(),);
      case EnumDataForSettingsItemManiacWMatchBalanceView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForSettingsItemManiacWMatchBalanceView.noSelectedItemManiacWMatchBalanceView:
        return const Card(child: Center(child: Text("No Selected Maniac")));
      case EnumDataForSettingsItemManiacWMatchBalanceView.success:
        return Column(
            children: [
              Card(
                  child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 16.0),
                              child: Text(
                                "Maps",
                                style: Theme.of(context).textTheme.displaySmall,),
                            )
                        ),
                        SettingsListMapsWMatchBalanceView(dataForNamedParameterNamedStreamWState
                            .selectedItemManiacWMatchBalance
                            .getClone)
                      ])
              ),
              Card(
                  child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 16.0),
                              child: Text(
                                "Maniac Perks",
                                style: Theme.of(context).textTheme.displaySmall,),
                            )
                        ),
                        SettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView(dataForNamedParameterNamedStreamWState
                            .selectedItemManiacWMatchBalance
                            .getClone),
                        SettingsListManiacPerksWMatchBalanceView(dataForNamedParameterNamedStreamWState
                            .selectedItemManiacWMatchBalance
                            .getClone)
                      ])
              ),
              Card(
                  child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 16.0),
                              child: Text(
                                "Survivor Perks",
                                style: Theme.of(context).textTheme.displaySmall,),
                            )
                        ),
                        SettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceView(dataForNamedParameterNamedStreamWState
                            .selectedItemManiacWMatchBalance
                            .getClone),
                        SettingsListSurvivorPerksWMatchBalanceView(dataForNamedParameterNamedStreamWState
                            .selectedItemManiacWMatchBalance
                            .getClone)
                      ])
              ),
            ]);
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
    debugPrint("SettingsItemManiacWMatchBalanceView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}