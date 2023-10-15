import 'package:flutter/material.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_view/top_players_view.dart';

final class SelectedNavigationItemView extends StatefulWidget {
  final String nameRoute;

  const SelectedNavigationItemView(this.nameRoute);

  @override
  State<SelectedNavigationItemView> createState() => _SelectedNavigationItemViewState();
}

final class _SelectedNavigationItemViewState extends State<SelectedNavigationItemView> {
  @override
  Widget build(BuildContext context) {
    switch(widget.nameRoute) {
      case KeysNavigationUtility.selectedNavigationItemViewQTopPlayers:
        return TopPlayersView();
      case KeysNavigationUtility.selectedNavigationItemViewQBalance:
        return Container();
      case KeysNavigationUtility.selectedNavigationItemViewQTournaments:
        return Container();
      default:
        return Container();
    }
    /// TopPlayersView() -- READY
    /// BalanceView()
    /// TournamentsView()
    /// SearchUsersToListView() -- READY
    /// DetailsSeasonView()
    /// AccountView()
  }
}