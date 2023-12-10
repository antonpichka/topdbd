import 'package:flutter/material.dart';

final class UserView extends StatefulWidget {
  final String usernameByDiscordUser;
  final Widget namedNavigationUserView;
  final Widget namedUserView;

  const UserView(this.usernameByDiscordUser,this.namedNavigationUserView,this.namedUserView);

  @override
  State<UserView> createState() => _UserViewStats();
}

final class _UserViewStats extends State<UserView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    child: Text(widget.usernameByDiscordUser,
                      style: Theme.of(context).textTheme.bodyLarge,),
                  ),
                ],
              ),
            ),
            widget.namedNavigationUserView,
            widget.namedUserView,
          ],),
      ),
    );
  }
}