import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class StatisticsOnManiacsUserView extends StatefulWidget {
  @override
  State<StatisticsOnManiacsUserView> createState() => _StatisticsOnManiacsUserViewState();
}

final class _StatisticsOnManiacsUserViewState extends State<StatisticsOnManiacsUserView> {
  @override
  Widget build(BuildContext context) {
    final rvDoubleWidthSizedBox = ResponsiveValue<double>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: 1.0),
          Condition.equals(name: TABLET, value: 1.0),
          Condition.equals(name: DESKTOP,value: 2.1),
        ]).value;
    return  SizedBox(
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
                    child: SingleChildScrollView(
                      child: SizedBox(
                        width: 350,
                        height: 300,
                        child: Chart(
                          data: const [
                            { 'genre': 'Sports', 'sold': 1 },
                            { 'genre': 'Strategy', 'sold': 3 },
                            { 'genre': 'Action', 'sold': 5 },
                            { 'genre': 'Shooter', 'sold': 7 },
                            { 'genre': 'Other', 'sold': 9 },
                          ],
                          variables: {
                            'genre': Variable(
                              accessor: (Map map) => map['genre'] as String,
                            ),
                            'sold': Variable(
                              accessor: (Map map) => map['sold'] as num,
                            ),
                          },
                          marks: [IntervalMark()],
                          axes: [
                            Defaults.horizontalAxis,
                          ],
                        ),
                      ),
                    ),
                ),
              ],)
        )
    );
  }
}