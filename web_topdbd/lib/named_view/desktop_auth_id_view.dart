import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final class DesktopAuthIdView extends StatefulWidget {
  @override
  State<DesktopAuthIdView> createState() => _DesktopAuthIdViewState();
}

final class _DesktopAuthIdViewState extends State<DesktopAuthIdView> {
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
                                icon: Icon(
                                  Icons.copy,
                                  size: 20,
                                  color: Theme.of(context).colorScheme.secondary,)
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
                                icon: Icon(
                                  Icons.refresh,
                                  size: 20,
                                  color: Theme.of(context).colorScheme.secondary,)
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