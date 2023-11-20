import 'package:flutter/material.dart';

final class StatisticsOnManiacsUserView extends StatefulWidget {
  @override
  State<StatisticsOnManiacsUserView> createState() => _StatisticsOnManiacsUserViewState();
}

final class _StatisticsOnManiacsUserViewState extends State<StatisticsOnManiacsUserView> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Icon(Icons.stacked_bar_chart),
                  Icon(Icons.accessibility),
                  SizedBox(width: 2,),
                  Padding(
                    padding: EdgeInsets.only(top: 3.0),
                    child: Text("Statistics on maniacs"),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.0,
              color: Theme.of(context).dividerColor,),
            const SizedBox(height: 5,),
            Container(),
          ],)
    );
  }
}