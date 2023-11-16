import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class DesktopAuthIdUserView extends StatefulWidget {
  @override
  State<DesktopAuthIdUserView> createState() => _DesktopAuthIdUserViewState();
}

final class _DesktopAuthIdUserViewState extends State<DesktopAuthIdUserView> {
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
            const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Tooltip(
                        message: "Access is only available to: 'YOU'",
                        child: Icon(Icons.lock, color: Colors.white,)),
                    Icon(Icons.login, color: Colors.white,),
                    SizedBox(width: 2,),
                    Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: Text("Desktop Auth Id"),
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
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: TextFormField(
                          initialValue: "fjeklr2jkl34jl2kj21lk2j1k4jdwkjekl4jk53kwqwqwqwqwqsqsqwq",
                          decoration:  const InputDecoration(
                              labelText: "Desktop Auth Id",
                              labelStyle: TextStyle(color: Colors.white),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                          ),
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          enabled: false,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Wrap(
                        children: [
                          Ink(
                            decoration: ShapeDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                shape: const CircleBorder()
                            ),
                            child: IconButton(
                                onPressed: () {
                                  Clipboard.setData(const ClipboardData(text: "fjeklr2jkl34jl2kj21lk2j1k4jdwkjekl4jk53k")).then((_) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: Text('Copied \'Desktop Auth Id\'',
                                            style: Theme.of(context).textTheme.bodyMedium,),
                                          duration: const Duration(seconds: 1),));
                                  });
                                },
                                icon: const Icon(
                                  Icons.copy,
                                  size: 20,
                                  color: Colors.white,)
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Ink(
                            decoration: ShapeDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                shape: const CircleBorder()
                            ),
                            child: IconButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text('You have successfully changed \'Desktop Auth Id\'',
                                          style: Theme.of(context).textTheme.bodyMedium,),
                                        duration: const Duration(seconds: 1),));
                                },
                                icon: const Icon(
                                  Icons.refresh,
                                  size: 20,
                                  color: Colors.white,)
                            ),
                          ),
                        ],
                      ),
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