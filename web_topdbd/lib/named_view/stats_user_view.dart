import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class StatsUserView extends StatefulWidget {
  @override
  State<StatsUserView> createState() => _StatsUserViewState();
}

final class _StatsUserViewState extends State<StatsUserView> {
  @override
  Widget build(BuildContext context) {
    final rvDoubleWidthSizedBox = ResponsiveValue<double>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: 1.0),
          Condition.equals(name: TABLET, value: 1.0),
          Condition.equals(name: DESKTOP,value: 2.1),
        ]).value;
    return SizedBox(
      width: MediaQuery.of(context).size.width / rvDoubleWidthSizedBox!,
      child: Card(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Icon(Icons.query_stats, color: Colors.white,),
                    SizedBox(width: 2,),
                    Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: Text("Stats"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Theme.of(context).colorScheme.secondary))
              ),
            ),
            const SizedBox(height: 5,),
            SizedBox(
                width: double.infinity,
                child: Padding(
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
                      Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Theme.of(context).dividerColor))
                          )
                      ),
                      const Row(
                        children: [
                          Expanded(
                              child: Text("Victory")),
                          Expanded(
                              child: Text("100%"))
                        ],),
                      Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Theme.of(context).dividerColor))
                          )
                      ),
                      const Row(
                        children: [
                          Expanded(
                              child: Text("Win/Lose")),
                          Expanded(
                              child: Text("10/0"))
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Theme.of(context).dividerColor))
                          )
                      ),
                      const Row(
                          children: [
                            Expanded(
                                child: Text("Rating")),
                            Expanded(
                                child: Text("300"))
                          ]),
                    ]),
                ),
            ),
          ]),
      ),
    );
  }

}