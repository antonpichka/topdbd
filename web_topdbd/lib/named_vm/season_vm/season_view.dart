import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:web_topdbd/named_vm/season_vm/enum_data_for_season_view.dart';
import 'package:web_topdbd/named_vm/season_vm/test_season_view_model.dart';

final class SeasonView extends StatefulWidget {
  @override
  State<SeasonView> createState() => _SeasonViewState();
}

final class _SeasonViewState extends State<SeasonView> {
  /// RELEASE CODE
  // late final SeasonViewModel _viewModel;
  /// TEST CODE
  late final TestSeasonViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = SeasonViewModel();
    /// TEST CODE
    _viewModel = TestSeasonViewModel();
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
    final dataForNamedParameterNamedStreamWState = _viewModel.getDataForNamedParameterNamedStreamWState;
    switch (dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForSeasonView.isLoading:
        return const Center(child: CircularProgressIndicator());
      case EnumDataForSeasonView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"),);
      case EnumDataForSeasonView.success:
        return SizedBox(
          width: double.infinity,
          child: Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      const Icon(Icons.rocket_launch),
                      const SizedBox(width: 2,),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Text("Season ${dataForNamedParameterNamedStreamWState.seasonNumberBySeason}"),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1.0,
                  color: Theme.of(context).dividerColor,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LinearPercentIndicator(
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
                        percent: dataForNamedParameterNamedStreamWState.getDoubleWhereIntWFormulaWPercentageDifferenceButDistanceTraveled,
                        center: Text("${dataForNamedParameterNamedStreamWState.getIntWhereFormulaWPercentageDifferenceButDistanceTraveledParametersThree}%"),
                        barRadius: Radius.zero,
                        backgroundColor: Theme.of(context).colorScheme.background,
                        progressColor: Colors.green,
                      ),
                    ),
                    Wrap(
                      runAlignment: WrapAlignment.center,
                      children: [
                        Text(dataForNamedParameterNamedStreamWState.getStringWhereFormattedParameterStartOfSeasonTimeBySeason),
                        const Text(" ~ "),
                        Text(dataForNamedParameterNamedStreamWState.getStringWhereFormattedParameterEndOfSeasonTimeBySeason),
                      ]),
                    const SizedBox(height: 5,),
                  ],),
              ],
            ),
          ),
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
    debugPrint("SeasonView: $result");
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}