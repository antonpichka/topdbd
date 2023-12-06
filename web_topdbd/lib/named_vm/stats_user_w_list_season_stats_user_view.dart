import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/list_season_stats_user_view.dart';
import 'package:web_topdbd/named_vm/stats_user_view.dart';

final class StatsUserWListSeasonStatsUserView extends StatelessWidget {
  final String usernameByDiscordUser;

  const StatsUserWListSeasonStatsUserView(this.usernameByDiscordUser);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.transparent,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Icon(Icons.query_stats),
                  Text("/"),
                  Icon(Icons.rocket),
                  Icon(Icons.query_stats),
                  SizedBox(width: 2,),
                  Padding(
                    padding: EdgeInsets.only(top: 3.0),
                    child: Text("Stats/Matches"),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.0,
              color: Theme.of(context).dividerColor,),
            const SizedBox(height: 5,),
            StatsUserView(usernameByDiscordUser),
            ListSeasonStatsUserView(usernameByDiscordUser)
          ],),
      ),
    );
  }
}