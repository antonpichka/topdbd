import 'package:flutter/material.dart';
import 'package:web_topdbd/named_utility/enum_navigation_utility.dart';
import 'package:web_topdbd/named_view/top_players_view.dart';

final class SelectedNavigationItemView extends StatefulWidget {
  final EnumNavigationUtility enumNavigationUtility;

  const SelectedNavigationItemView(this.enumNavigationUtility);

  @override
  State<SelectedNavigationItemView> createState() => _SelectedNavigationItemViewState();
}

final class _SelectedNavigationItemViewState extends State<SelectedNavigationItemView> {
  @override
  Widget build(BuildContext context) {
    switch(widget.enumNavigationUtility) {
      case EnumNavigationUtility.topPlayers:
        return TopPlayersView();
      case EnumNavigationUtility.balance:
        return Container();
      case EnumNavigationUtility.tournaments:
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