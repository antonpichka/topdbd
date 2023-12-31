import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/settings_balance_vm/enum_data_for_settings_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_balance_vm/test_settings_balance_view_model.dart';
import 'package:web_topdbd/named_vm/settings_list_maniac_perks_w_match_balance_vm/settings_list_maniac_perks_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_maniac_w_match_balance_vm/settings_list_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_maps_w_match_balance_vm/settings_list_maps_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_survivor_perks_w_match_balance_vm/settings_list_survivor_perks_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_vm/settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_survivor_perk_by_maniac_w_match_balance_vm/settings_necessary_length_picked_survivor_perk_by_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_number_of_rounds_to_match_balance_vm/settings_number_of_rounds_to_match_balance_view.dart';

final class SettingsBalanceView extends StatefulWidget {
  @override
  State<SettingsBalanceView> createState() => _SettingsBalanceViewState();
}

final class _SettingsBalanceViewState extends State<SettingsBalanceView> {
  /// RELEASE CODE
  // late final SettingsBalanceViewModel _viewModel;
  /// TEST CODE
  late final TestSettingsBalanceViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = SettingsBalanceViewModel();
    /// TEST CODE
    _viewModel = TestSettingsBalanceViewModel();
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
      case EnumDataForSettingsBalanceView.isLoading:
        return const Center(child: CircularProgressIndicator(),);
      case EnumDataForSettingsBalanceView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForSettingsBalanceView.success:
        return Column(
            children: [
              SettingsNumberOfRoundsToMatchBalanceView(),
              Card(
                  child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 16.0),
                              child: Text(
                                "Maniacs",
                                style: Theme.of(context).textTheme.displaySmall,),
                            )
                        ),
                        SettingsListManiacWMatchBalanceView(),
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
                                "Maps",
                                style: Theme.of(context).textTheme.displaySmall,),
                            )
                        ),
                        SettingsListMapsWMatchBalanceView()
                      ])
              ),
              Card(
                  child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 16.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Maniac Perks",
                                    style: Theme.of(context).textTheme.displaySmall,),
                                  SettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView()
                                ],
                              ),
                            )
                        ),
                        SettingsListManiacPerksWMatchBalanceView()
                      ])
              ),
              Card(
                  child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 16.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Survivor Perks",
                                    style: Theme.of(context).textTheme.displaySmall,),
                                  SettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceView()
                                ],
                              ),
                            )
                        ),
                        SettingsListSurvivorPerksWMatchBalanceView()
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
    final result = await _viewModel.init();
    debugPrint("SettingsBalanceView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}