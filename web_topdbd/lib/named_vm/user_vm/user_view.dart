import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/about_me_user_view.dart';
import 'package:web_topdbd/named_vm/desktop_auth_id_user_view.dart';
import 'package:web_topdbd/named_vm/list_matches_user_view.dart';
import 'package:web_topdbd/named_vm/list_season_stats_user_view.dart';
import 'package:web_topdbd/named_vm/stats_user_view.dart';

final class UserView extends StatefulWidget {
  @override
  State<UserView> createState() => _UserViewState();
}

final class _UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    // localhost/#/user/vicar32  // (info)
    // localhost/#/user/stats/vicar32
    // localhost/#/user/matches/vicar32
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
                  const Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Icon(Icons.account_box),
                  ),
                  const SizedBox(width: 2,),
                  Tooltip(
                    message: "France",
                    child: Image.asset(
                        'assets/icon/flags/france.png',
                        width: 32,
                        height: 32,
                        fit: BoxFit.cover),
                  ),
                  const SizedBox(width: 1,),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("Vicar32",
                      style: Theme.of(context).textTheme.bodyLarge,),
                  ),
                ],
              ),
            ),
            Wrap(
              children: [
                DesktopAuthIdUserView(),
                AboutMeUserView()
              ],
            ),
            Wrap(
              children: [
                StatsUserView(),
                ListSeasonStatsUserView()
              ],
            ),
            Wrap(
              children: [
                ListMatchesUserView(),
                // Statistics
              ],
            )
          ],),
      ),
    );
  }
}