import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class ModeAboutMeUserView extends StatefulWidget {
  @override
  State<ModeAboutMeUserView> createState() => _ModeAboutMeUserViewState();
}

final class _ModeAboutMeUserViewState extends State<ModeAboutMeUserView> {
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
                    Icon(Icons.edit, color: Colors.white,),
                    SizedBox(width: 2,),
                    Icon(Icons.info_outline, color: Colors.white,),
                    SizedBox(width: 2,),
                    Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: Text("Mode About Me"),
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
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 2.0),
                      child: Icon(Icons.lock, color: Colors.white,),
                    ),
                    const SizedBox(width: 2,),
                    Wrap(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text("Access is only available to: "),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: ElevatedButton(
                              onPressed: () {

                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(18.0),
                                          side: BorderSide(color: Theme.of(context).colorScheme.primary)
                                      )
                                  )
                              ),
                              child: Text("You",
                                  style: Theme.of(context).textTheme.bodyMedium)
                          ),
                        ),
                      ],
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
            const SizedBox(height: 10,),
            SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white)
                    ),
                    child: ListTile(
                      titleAlignment: ListTileTitleAlignment.titleHeight,
                      onTap: () {

                      },
                      leading: const Icon(Icons.edit,color: Colors.white,),
                      title: Text("Edit",
                        style: Theme.of(context).textTheme.bodyMedium,),
                    ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}