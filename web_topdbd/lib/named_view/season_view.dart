import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class SeasonView extends StatefulWidget {
  @override
  State<SeasonView> createState() => _SeasonViewState();
}

final class _SeasonViewState extends State<SeasonView> {
  @override
  Widget build(BuildContext context) {
    final rvDoubleWidthSizedBox = ResponsiveValue<double>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: 1.0),
          Condition.equals(name: TABLET, value: 1.0),
          Condition.equals(name: DESKTOP,value: 2.1),
        ]).value ?? 2.1;
    return SizedBox(
      width: MediaQuery.of(context).size.width / rvDoubleWidthSizedBox,
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
                    Icon(Icons.rocket_launch, color: Colors.white,),
                    SizedBox(width: 2,),
                    Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: Text("Season 10"),
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
            const SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Start of Season Time: Sep 1, 2023"),
                  Text("End of Season Time: Sep 30, 2023"),
                  SizedBox(height: 5,),
                ],)
            ),
          ],
        ),
      ),
    );
  }

}