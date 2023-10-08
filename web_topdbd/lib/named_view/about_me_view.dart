import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class AboutMeView extends StatefulWidget {
  @override
  State<AboutMeView> createState() => _AboutMeViewState();
}

final class _AboutMeViewState extends State<AboutMeView> {
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
                    Icon(Icons.info_outline, color: Colors.white,),
                    SizedBox(width: 2,),
                    Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: Text("About Me"),
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
                child: Column(
                  children: [
                    Wrap(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text("Roles: "),
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
                              child: Text("Admin",
                                  style: Theme.of(context).textTheme.bodyMedium)
                          ),
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
                              child: Text("Test",
                                  style: Theme.of(context).textTheme.bodyMedium)
                          ),
                        ),
                      ],),
                    const SizedBox(height: 5,),
                    Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Theme.of(context).dividerColor))
                        )
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: TextFormField(
                              initialValue: "wqwqrs#1255",
                              decoration:  const InputDecoration(
                                labelText: "DBD Code",
                                labelStyle: TextStyle(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              ),
                              enableSuggestions: false,
                              autocorrect: false,
                              enabled: false,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Ink(
                            decoration: ShapeDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                shape: const CircleBorder()
                            ),
                            child: IconButton(
                                onPressed: () {
                                  Clipboard.setData(const ClipboardData(text: "wqwqrs#1255")).then((_) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: Text('Copied \'DBD Code\'',
                                            style: Theme.of(context).textTheme.bodyMedium,),
                                          duration: const Duration(seconds: 1),));
                                  });
                                },
                                icon: Icon(
                                  Icons.copy,
                                  size: 20,
                                  color: Theme.of(context).colorScheme.secondary,)
                            ),
                          ),
                        ),
                        const SizedBox(height: 5,),
                      ],),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}