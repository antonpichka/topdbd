import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

final class SeasonView extends StatefulWidget {
  @override
  State<SeasonView> createState() => _SeasonViewState();
}

final class _SeasonViewState extends State<SeasonView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
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
                      child: Text("1 Season"),
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
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Start of Season Time: Sep 1, 2023"),
                  const Text("End of Season Time: Sep 30, 2023"),
                  Wrap(
                    children: [
                      const Icon(Icons.history_edu, color: Colors.white,),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: RichText(
                            text: TextSpan(
                              text: "History of the Seasons",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize),
                              recognizer: TapGestureRecognizer()..onTap = () {
                              },
                            )
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5,),
                ],)
            ),
          ],
        ),
      ),
    );
  }

}