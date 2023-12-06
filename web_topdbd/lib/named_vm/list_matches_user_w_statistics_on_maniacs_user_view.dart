import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/list_matches_user_view.dart';
import 'package:web_topdbd/named_vm/statistics_on_maniacs_user_view.dart';

final class ListMatchesUserWStatisticsOnManiacsUserView extends StatelessWidget {
  final String usernameByDiscordUser;

  const ListMatchesUserWStatisticsOnManiacsUserView(this.usernameByDiscordUser);

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
                  Icon(Icons.stacked_bar_chart),
                  Icon(Icons.accessibility),
                  Text("/"),
                  Icon(Icons.videogame_asset_outlined),
                  SizedBox(width: 2,),
                  Padding(
                    padding: EdgeInsets.only(top: 3.0),
                    child: Text("Statistics on maniacs/Matches"),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.0,
              color: Theme.of(context).dividerColor,),
            const SizedBox(height: 5,),
            StatisticsOnManiacsUserView(usernameByDiscordUser),
            ListMatchesUserView(usernameByDiscordUser),
          ],),
      ),
    );
  }
}