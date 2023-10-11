import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final class ButtonsAccountView extends StatefulWidget {
  @override
  State<ButtonsAccountView> createState() => _ButtonsAccountViewState();
}

final class _ButtonsAccountViewState extends State<ButtonsAccountView> {
  @override
  Widget build(BuildContext context) {
    const username = "WWwwww qwwwwWwwwwwwqqw";
    return Wrap(
      children: [
        SizedBox(
          width: 240,
          child: Tooltip(
            message: username,
            child: ListTile(
              onTap: () {
              },
              leading: Image.asset(
                  'assets/icon/flags/france.png',
                  width: 32,
                  height: 32,
                  fit: BoxFit.cover),
              title: Text(username.length >  9 ? "${username.substring(0,9)}..." : username,
                style: Theme.of(context).textTheme.bodyMedium,),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Ink(
            decoration: ShapeDecoration(
                color: Theme.of(context).colorScheme.primary,
                shape: const CircleBorder()
            ),
            child: IconButton(
              icon: const Icon(
                Icons.logout,
              ),
              iconSize: 25,
              color: Colors.white,
              onPressed: () {
                showDialog(context: context, builder: (BuildContext context){
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
              },
            ),
          ),
        ),
      ],);
  }
}