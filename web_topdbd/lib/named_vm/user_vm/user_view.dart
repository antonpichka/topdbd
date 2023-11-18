import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/navigation_user_vm/navigation_user_view.dart';

final class UserView extends StatefulWidget {
  final String username;
  final Widget namedUserView;

  const UserView(this.username,this.namedUserView);

  @override
  State<UserView> createState() => _UserViewStats();
}

final class _UserViewStats extends State<UserView> {
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
                    child: Text(widget.username,
                      style: Theme.of(context).textTheme.bodyLarge,),
                  ),
                ],
              ),
            ),
            NavigationUserView(),
            widget.namedUserView,
            /*Wrap(
              children: [
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
            )*/
          ],),
      ),
    );
  }
}