import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/list_season_stats_user_view.dart';
import 'package:web_topdbd/named_vm/stats_user_view.dart';

final class StatsUserWListSeasonStatsUserView extends StatelessWidget {
  final String username;

  const StatsUserWListSeasonStatsUserView(this.username);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        StatsUserView(username),
        ListSeasonStatsUserView(username)
      ],);
  }
}