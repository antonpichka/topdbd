import 'package:flutter/material.dart';

final class SettingsUserView extends StatefulWidget {
  final String username;

  const SettingsUserView(this.username);

  @override
  State<SettingsUserView> createState() => _SettingsUserViewState();
}

final class _SettingsUserViewState extends State<SettingsUserView> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Icon(Icons.settings),
                  SizedBox(width: 2,),
                  Padding(
                    padding: EdgeInsets.only(top: 3.0),
                    child: Text("Settings"),
                  ),
                ],
              ),
              Divider(
                height: 1.0,
                color: Theme.of(context).dividerColor,),
              const SizedBox(height: 5,),
              Column(
                children: [
                  TextFormField(
                    initialValue: "wqwqrs#1255",
                    decoration:  const InputDecoration(
                      labelText: "DBD Code",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    enableSuggestions: false,
                    autocorrect: false,
                    onChanged: (String value) {

                    },
                  ),
                  Tooltip(
                    message: "Save",
                    child: Ink(
                      decoration: const ShapeDecoration(
                          shape: CircleBorder()
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.save),
                        iconSize: 30,
                        onPressed: () {

                        },
                      ),
                    ),
                  ),
                ],)
            ],),
        ));
  }

}