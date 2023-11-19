import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class StatisticsOnManiacsUserView extends StatefulWidget {
  @override
  State<StatisticsOnManiacsUserView> createState() => _StatisticsOnManiacsUserViewState();
}

final class _StatisticsOnManiacsUserViewState extends State<StatisticsOnManiacsUserView> {
  @override
  Widget build(BuildContext context) {
    final value = ResponsiveValue<double>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: 1.0),
          Condition.equals(name: TABLET, value: 1.0),
          Condition.equals(name: DESKTOP,value: 2.1),
        ]).value ?? 0.0;
    return  SizedBox(
        width: MediaQuery.of(context).size.width / value,
        child: Card(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Icon(Icons.stacked_bar_chart, color: Colors.white),
                      Icon(Icons.accessibility, color: Colors.white,),
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
        )
    );
  }
}