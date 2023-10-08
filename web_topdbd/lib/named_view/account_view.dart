import 'package:flutter/material.dart';
import 'package:web_topdbd/named_view/about_me_view.dart';
import 'package:web_topdbd/named_view/desktop_auth_id_view.dart';
import 'package:web_topdbd/named_view/mode_about_me_view.dart';

final class AccountView extends StatefulWidget {
  @override
  State<AccountView> createState() => _AccountViewState();
}

final class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.transparent,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    const Icon(Icons.account_box, color: Colors.white,),
                    const SizedBox(width: 2,),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text("My Profile",
                        style: Theme.of(context).textTheme.bodyLarge,),
                    ),
                  ],
                ),
              ),
            ),
            DesktopAuthIdView(),
            Wrap(
              children: [
                ModeAboutMeView(),
                AboutMeView()
              ],
            ),
          ],),
      ),
    );
  }
}