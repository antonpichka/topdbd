import 'package:common_topdbd/model/season/season.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/named_utility/algorithms_utility.dart';
import 'package:web_topdbd/named_vm/list_season_vm/enum_data_for_list_season_view.dart';
import 'package:web_topdbd/named_vm/list_season_vm/test_list_season_view_model.dart';

final class ListSeasonView extends StatefulWidget {
  @override
  State<ListSeasonView> createState() => _ListSeasonViewState();
}

final class _ListSeasonViewState extends State<ListSeasonView> {
  /// RELEASE CODE
  // late final ListSeasonViewModel _viewModel;
  /// TEST CODE
  late final TestListSeasonViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = ListSeasonViewModel();
    /// TEST CODE
    _viewModel = TestListSeasonViewModel();
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
    final value = ResponsiveValue<int>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: 1),
          Condition.equals(name: TABLET, value: 1),
          Condition.equals(name: DESKTOP, value: 3),
        ]
    ).value ?? 3;
    final valueFIRST = ResponsiveValue<double>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: 1 / .4),
          Condition.equals(name: TABLET, value: 1 / .3),
          Condition.equals(name: DESKTOP, value: (1 / .4)),
        ]
    ).value ?? (1 / .4);
    switch (dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForListSeasonView.isLoading:
        return const Center(child: CircularProgressIndicator(),);
      case EnumDataForListSeasonView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"),);
      case EnumDataForListSeasonView.success:
        return SizedBox(
          width: double.infinity,
          child: Card(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Icon(Icons.rocket),
                      SizedBox(width: 2,),
                      Padding(
                        padding: EdgeInsets.only(top: 3.0),
                        child: Text("Past Seasons"),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1.0,
                  color: Theme.of(context).dividerColor,),
                dataForNamedParameterNamedStreamWState
                    .listSeason
                    .listModel
                    .isEmpty
                    ? const Center(child: Text("There are no previous seasons yet"))
                    : GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: value,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: valueFIRST
                  ),
                  itemCount: dataForNamedParameterNamedStreamWState.listSeason.listModel.length,
                  itemBuilder: (BuildContext context, int index) {
                    final itemModel = dataForNamedParameterNamedStreamWState.listSeason.listModel[index];
                    return _getItemToGridViewFromContextAndSeason(context,itemModel);
                  },
                ),
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
    debugPrint("ListSeasonView: $result");
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Widget _getItemToGridViewFromContextAndSeason(BuildContext context,Season season) {
    return Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                "Season ${season.seasonNumber}",
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).textTheme.titleMedium!.color,),
              ),
            ),
            Divider(
              height: 1.0,
              color: Theme.of(context).dividerColor,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Text("${AlgorithmsUtility.getStringWhereFormatByDateFormatFromDateTime(season.startOfSeasonTime)} ~ "
                      "${AlgorithmsUtility.getStringWhereFormatByDateFormatFromDateTime(season.endOfSeasonTime)}\n"
                      "Number of matches played per season: (${season.numberOfMatchesPlayedPerSeason})\n"
                      "Number of unique players who played in a season: (${season.numberOfUniquePlayersWhoPlayedInASeason})"),
                ),
              ),
            ),
          ],
        ),
    );
  }
}