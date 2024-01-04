import 'package:flutter/material.dart';

final class SettingsSaveChangesToMatchBalanceView extends StatefulWidget {
  @override
  State<SettingsSaveChangesToMatchBalanceView> createState() => _SettingsSaveChangesToMatchBalanceViewState();
}

final class _SettingsSaveChangesToMatchBalanceViewState extends State<SettingsSaveChangesToMatchBalanceView> {
  @override
  Widget build(BuildContext context) {
    // TODO: THERE
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {

          },
          child: const Wrap(
            children: [
              Icon(Icons.save),
              Padding(
                padding: EdgeInsets.all(2.0),
                child: Text("Save Changes"),
              )
            ],),
        ),
      ),
    );
  }

}