import 'package:common_topdbd/model/top_players/top_players.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';
import 'package:web_topdbd/named_vm/top_players_vm/data_for_top_players_view.dart';
import 'package:web_topdbd/named_vm/top_players_vm/enum_data_for_top_players_view.dart';
import 'package:web_topdbd/named_vm/top_players_vm/test_top_players_view_model.dart';

final class TopPlayersView extends StatefulWidget {
  @override
  State<TopPlayersView> createState() => _TopPlayersViewState();
}

final class _TopPlayersViewState extends State<TopPlayersView> {
  /// RELEASE CODE
  // late final TopPlayersViewModel _viewModel;
  /// TEST CODE
  late final TestTopPlayersViewModel _viewModel;
  late final ScrollController _scrollController;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = TopPlayersViewModel();
    /// TEST CODE
    _viewModel = TestTopPlayersViewModel();
    _scrollController = ScrollController();
    super.initState();
    _initParameterViewModel();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForNamedParameterNamedStreamWState = _viewModel.getDataForNamedParameterNamedStreamWState;
    switch (dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForTopPlayersView.isLoading:
        return const Center(child: CircularProgressIndicator(),);
      case EnumDataForTopPlayersView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForTopPlayersView.isLoadingWSetValueToDropdownButton:
        return SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.transparent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        const Icon(Icons.stacked_bar_chart),
                        const SizedBox(width: 2,),
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text("TOP Players",
                            style: Theme.of(context).textTheme.bodyLarge,),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    color: Theme.of(context).dividerColor,),
                  const Center(
                    child: CircularProgressIndicator(),),
                  Divider(
                    height: 1.0,
                    color: Theme.of(context).dividerColor,),
                  ListView.separated(
                      controller: _scrollController,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: dataForNamedParameterNamedStreamWState.getIntWhereLengthDefinesBoolParametersIsHasReachedMaxAndListTopPlayers,
                      itemBuilder: (context,index) {
                        if(index >= dataForNamedParameterNamedStreamWState.listTopPlayers.listModel.length) {
                          return _getWidgetWhereRefreshListTopPlayersParameterViewModel();
                        }
                        final itemModel = dataForNamedParameterNamedStreamWState.listTopPlayers.listModel[index];
                        if(index == 0) {
                          return _getHeaderToListViewWhereItemToListViewFromTwo(index,itemModel);
                        }
                        return _getItemToListViewFromTwoParameterViewModel(index,itemModel);
                      },
                      separatorBuilder: (context,index) {
                        return Divider(
                          height: 1.0,
                          color: Theme.of(context).dividerColor,);
                      }),
                ],
              ),
            ));
      case EnumDataForTopPlayersView.lessThanTwentyFiveByListTopPlayers:
        return SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.transparent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        const Icon(Icons.stacked_bar_chart),
                        const SizedBox(width: 2,),
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text("TOP Players",
                            style: Theme.of(context).textTheme.bodyLarge,),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    color: Theme.of(context).dividerColor,),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(color: Theme.of(context).dividerColor),
                            right: BorderSide(color: Theme.of(context).dividerColor))
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: dataForNamedParameterNamedStreamWState.valueToDropdownButton,
                        items: DataForTopPlayersView.getListStringWhereValueToDropdownButton.map((e) {
                          return DropdownMenuItem<String>(
                              value: e,
                              child: Center(
                                  child: Text(
                                      e,
                                      textAlign: TextAlign.center)
                              )
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          _viewModel.setValueToDropdownButton(value);
                        },
                      ),
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    color: Theme.of(context).dividerColor,),
                  const Center(
                    child: Text("There are currently less than 25 players in the database, so going from 25 to ∞ is not possible"),)
                ],
              ),
            ));
      case EnumDataForTopPlayersView.isEmptyByListTopPlayers:
        return SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.transparent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        const Icon(Icons.stacked_bar_chart),
                        const SizedBox(width: 2,),
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text("TOP Players",
                            style: Theme.of(context).textTheme.bodyLarge,),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    color: Theme.of(context).dividerColor,),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(color: Theme.of(context).dividerColor),
                            right: BorderSide(color: Theme.of(context).dividerColor))
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: dataForNamedParameterNamedStreamWState.valueToDropdownButton,
                        items: DataForTopPlayersView.getListStringWhereValueToDropdownButton.map((e) {
                          return DropdownMenuItem<String>(
                              value: e,
                              child: Center(
                                  child: Text(
                                      e,
                                      textAlign: TextAlign.center)
                              )
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          _viewModel.setValueToDropdownButton(value);
                        },
                      ),
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    color: Theme.of(context).dividerColor,),
                  const Center(
                    child: Text("Empty List Players"),)
                ],
              ),
            ));
      case EnumDataForTopPlayersView.success:
        return SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.transparent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        const Icon(Icons.stacked_bar_chart),
                        const SizedBox(width: 2,),
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text("TOP Players",
                            style: Theme.of(context).textTheme.bodyLarge,),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    color: Theme.of(context).dividerColor,),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(color: Theme.of(context).dividerColor),
                            right: BorderSide(color: Theme.of(context).dividerColor))
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: dataForNamedParameterNamedStreamWState.valueToDropdownButton,
                        items: DataForTopPlayersView.getListStringWhereValueToDropdownButton.map((e) {
                          return DropdownMenuItem<String>(
                              value: e,
                              child: Center(
                                  child: Text(
                                      e,
                                      textAlign: TextAlign.center)
                              )
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          _viewModel.setValueToDropdownButton(value);
                        },
                      ),
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    color: Theme.of(context).dividerColor,),
                  ListView.separated(
                      controller: _scrollController,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: dataForNamedParameterNamedStreamWState.getIntWhereLengthDefinesBoolParametersIsHasReachedMaxAndListTopPlayers,
                      itemBuilder: (context,index) {
                        if(index >= dataForNamedParameterNamedStreamWState.listTopPlayers.listModel.length) {
                          return _getWidgetWhereRefreshListTopPlayersParameterViewModel();
                        }
                        final itemModel = dataForNamedParameterNamedStreamWState.listTopPlayers.listModel[index];
                        if(index == 0) {
                          return _getHeaderToListViewWhereItemToListViewFromTwo(index,itemModel);
                        }
                        return _getItemToListViewFromTwoParameterViewModel(index,itemModel);
                      },
                      separatorBuilder: (context,index) {
                        return Divider(
                          height: 1.0,
                          color: Theme.of(context).dividerColor,);
                      }),
                ],
              ),
            ));
        default:
          return Container();
    }
  }

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _viewModel.init();
    debugPrint("TopPlayersView: $result");
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Widget _getHeaderToListViewWhereItemToListViewFromTwo(int index,TopPlayers topPlayers) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                    alignment: Alignment.center,
                    child: Text(
                        "Rank",
                        style: Theme.of(context).textTheme.bodyLarge)
                )
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Image.asset(
                      'assets/icon/flags/unknown.png',
                      width: 32,
                      height: 32,
                      fit: BoxFit.cover),
                  const SizedBox(width: 2,),
                  Text(
                      "Player",
                      style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            ),
            Expanded(
                child: Text(
                    'Rating',
                    style: Theme.of(context).textTheme.bodyLarge)),
            Expanded(
              child: Text(
                  "Victory %",
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
            Expanded(
              child: Text(
                  "Total matches played",
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
          ],
        ),
        Divider(
          height: 2.0,
          thickness: 2.0,
          color: Theme.of(context).dividerColor),
        _getItemToListViewFromTwoParameterViewModel(index,topPlayers),
      ],
    );
  }

  Widget _getItemToListViewFromTwoParameterViewModel(int index,TopPlayers topPlayers) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Container(
                alignment: Alignment.center,
                child: Text("#${_viewModel
                    .getDataForNamedParameterNamedStreamWState
                    .getIntFromIndex(index)}")
            )
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              _viewModel
                  .getDataForNamedParameterNamedStreamWState
                  .isWhereIndexMoreWEqualFromIndexAndNumberParameterListTopPlayers(index,101)
                  ? Container()
                  : Tooltip(
                message: topPlayers.country.getCountryRDWhereListCountryRDWReadyDataUtilityParameterNameCountry.nameCountry,
                child: Image.asset(
                    topPlayers
                        .country
                        .getCountryRDWhereListCountryRDWReadyDataUtilityParameterNameCountry
                        .pathToTheIcon,
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover),
              ),
              const SizedBox(width: 2,),
              RichText(
                  text: TextSpan(
                    text: topPlayers
                        .discordUserFirestore
                        .getStringWhereSubstringFromEndParameterUsername(30),
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      WebNavigationUtility
                          .goWhereChangeUrlAddressAndNewViewFromTwo(context,KeysNavigationUtility.getUserQQIdQQStatsFromId(topPlayers.discordUserFirestore.username));
                    },
                  ))
            ],
          ),
        ),
        Expanded(
            child: Text("${topPlayers.stats.ratingPoints}")),
        Expanded(
          child: Text("${topPlayers.stats.getDoubleWherePercentageWinRateAndTotalMatchesParameterMatchesWon}%"),
        ),
        Expanded(
          child: Text("${topPlayers.stats.getIntWhereTotalMatchesParametersMatchesWonAndMatchesLost}"),
        ),
      ],
    );
  }

  Widget _getWidgetWhereRefreshListTopPlayersParameterViewModel() {
    return Center(
      child: OutlinedButton(
        onPressed: () {
          _viewModel.refreshListTopPlayers();
        },
        child: const SizedBox(
          height: 24,
          width: 24,
          child: Icon(Icons.arrow_downward),
        ),
      ),
    );
  }
}