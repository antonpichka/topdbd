import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final class AuthDrawerView extends StatefulWidget {
  @override
  State<AuthDrawerView> createState() => _AuthDrawerViewState();
}

final class _AuthDrawerViewState extends State<AuthDrawerView> {
  @override
  Widget build(BuildContext context) {
    const username = "WWwwww qwwwwWwwwwwwqqwwqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq";
    return Column(
      children: [
        ListTile(
          title: Text(username.length >  9 ? "${username.substring(0,9)}..." : username,
            style: Theme.of(context).textTheme.bodyMedium,),
          leading: Image.asset(
              "assets/icon/flags/france.png",
              width: 32,
              height: 32,
              fit: BoxFit.cover),
          tileColor: Theme.of(context).colorScheme.surface,
          onTap: () {
          },),
        const SizedBox(height: 2,),
        ListTile(
          title: const Text("Logout"),
          leading: const Icon(Icons.logout),
          tileColor: Theme.of(context).colorScheme.surface,
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CupertinoAlertDialog(
                    content: Text("Are you sure you want to log out of your account ?",
                        style: Theme.of(context).textTheme.bodyMedium),
                    actions: [
                      CupertinoDialogAction(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Yes",
                              style: Theme.of(context).textTheme.bodyMedium)),
                      CupertinoDialogAction(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("No",
                            style: Theme.of(context).textTheme.bodyMedium,)),
                    ],
                  );
                });
          },),
        const SizedBox(height: 2,),
        ListTile(
          title: const Text("Download"),
          leading: const Icon(Icons.download),
          tileColor: Theme.of(context).colorScheme.surface,
          onTap: () {
          },),
      ],);
  }
}