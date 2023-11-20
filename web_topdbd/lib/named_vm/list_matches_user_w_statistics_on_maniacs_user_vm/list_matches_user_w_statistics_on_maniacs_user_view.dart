import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/list_matches_user_view.dart';
import 'package:web_topdbd/named_vm/statistics_on_maniacs_user_view.dart';

final class ListMatchesUserWStatisticsOnManiacsUserView extends StatefulWidget {
  final String username;

  const ListMatchesUserWStatisticsOnManiacsUserView(this.username);

  @override
  State<ListMatchesUserWStatisticsOnManiacsUserView> createState() => _ListMatchesUserWStatisticsOnManiacsUserViewState();
}

final class _ListMatchesUserWStatisticsOnManiacsUserViewState extends State<ListMatchesUserWStatisticsOnManiacsUserView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StatisticsOnManiacsUserView(),
        ListMatchesUserView(),
      ],);
  }
}