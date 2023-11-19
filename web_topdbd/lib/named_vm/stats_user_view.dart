import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class StatsUserView extends StatefulWidget {
  final String username;

  const StatsUserView(this.username);

  @override
  State<StatsUserView> createState() => _StatsUserViewState();
}

final class _StatsUserViewState extends State<StatsUserView> {
  @override
  Widget build(BuildContext context) {
    final value = ResponsiveValue<double>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: 1.0),
          Condition.equals(name: TABLET, value: 1.0),
          Condition.equals(name: DESKTOP,value: 2.1),
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
                  Icon(Icons.query_stats),
                  SizedBox(width: 2,),
                  Padding(
                    padding: EdgeInsets.only(top: 3.0),
                    child: Text("Stats"),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.0,
              color: Theme.of(context).dividerColor,),
            const SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Expanded(
                          child: Text("Rank")),
                      Expanded(
                          child: Text("#1"))
                    ],
                  ),
                  Divider(
                    height: 1.0,
                    color: Theme.of(context).dividerColor,),
                  const Row(
                    children: [
                      Expanded(
                          child: Text("Victory")),
                      Expanded(
                          child: Text("100%"))
                    ],),
                  Divider(
                    height: 1.0,
                    color: Theme.of(context).dividerColor,),
                  const Row(
                    children: [
                      Expanded(
                          child: Text("Win/Lose")),
                      Expanded(
                          child: Text("10/0"))
                    ],
                  ),
                  Divider(
                    height: 1.0,
                    color: Theme.of(context).dividerColor,),
                  const Row(
                      children: [
                        Expanded(
                            child: Text("Rating")),
                        Expanded(
                            child: Text("300"))
                      ]),
                ]),
            ),
          ]),
      ),
    );
  }

}