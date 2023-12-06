import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final class AboutMeUserView extends StatefulWidget {
  final String usernameByDiscordUser;

  const AboutMeUserView(this.usernameByDiscordUser);

  @override
  State<AboutMeUserView> createState() => _AboutMeUserViewState();
}

final class _AboutMeUserViewState extends State<AboutMeUserView> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const Wrap(
            alignment: WrapAlignment.center,
            children: [
              Icon(Icons.info_outline),
              SizedBox(width: 2,),
              Padding(
                padding: EdgeInsets.only(top: 3.0),
                child: Text("About Me"),
              ),
            ],
          ),
          Divider(
            height: 1.0,
            color: Theme.of(context).dividerColor,),
          const SizedBox(height: 5,),
          Wrap(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text("Roles: "),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Ink(
                  decoration: const ShapeDecoration(
                      shape: CircleBorder()
                  ),
                  child: TextButton(
                    child: const Text("Admin"),
                    onPressed: () {

                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Ink(
                  decoration: const ShapeDecoration(
                      shape: CircleBorder()
                  ),
                  child: TextButton(
                    child: const Text("Test"),
                    onPressed: () {

                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5,),
          Divider(
            height: 1.0,
            color: Theme.of(context).dividerColor,),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextFormField(
                    initialValue: "wqwqrs#1255",
                    decoration:  const InputDecoration(
                      labelText: "DBD Code",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    enableSuggestions: false,
                    autocorrect: false,
                    enabled: false,
                  ),
                ),
              ),
              Expanded(
                child: Tooltip(
                  message: "Copy",
                  child: Ink(
                    decoration: const ShapeDecoration(
                        shape: CircleBorder()
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.copy),
                      iconSize: 30,
                      onPressed: () {
                        Clipboard.setData(const ClipboardData(text: "wqwqrs#1255")).then((_) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Copied 'DBD Code'",
                                  style: Theme.of(context).textTheme.bodyMedium,),
                                duration: const Duration(seconds: 1),));
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5,),
            ],),
        ],
      ),
    );
  }
}