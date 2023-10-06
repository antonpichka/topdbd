import 'package:flutter/material.dart';
import 'package:web_topdbd/named_view/search_users_to_list_view.dart';

final class SelectedNavigationItemView extends StatefulWidget {
  @override
  State<SelectedNavigationItemView> createState() => _SelectedNavigationItemViewState();
}

final class _SelectedNavigationItemViewState extends State<SelectedNavigationItemView> {
  @override
  Widget build(BuildContext context) {
    /// TopPlayersView() -- READY
    /// BalanceView()
    /// TournamentsView()
    /// SearchUsersToListView() -- READY
    /// DetailsSeasonView()
    return SearchUsersToListView();
  }
}