import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class SeasonView extends StatefulWidget {
  @override
  State<SeasonView> createState() => _SeasonViewState();
}

final class _SeasonViewState extends State<SeasonView> {
  @override
  Widget build(BuildContext context) {
    final value = ResponsiveValue<double>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: 1.0),
          Condition.equals(name: TABLET, value: 1.0),
          Condition.equals(name: DESKTOP,value: 1.05),
        ]).value ?? 0.0;
    return SizedBox(
      width: MediaQuery.of(context).size.width / value,
      child: Card(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Icon(Icons.rocket_launch),
                  SizedBox(width: 2,),
                  Padding(
                    padding: EdgeInsets.only(top: 3.0),
                    child: Text("Season 10"),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.0,
              color: Theme.of(context).dividerColor,),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Start of Season Time:"),
                Text("Sep 1, 2023"),
                Text("End of Season Time:"),
                Text("Sep 30, 2023"),
                SizedBox(height: 5,),
              ],),
          ],
        ),
      ),
    );
  }

}