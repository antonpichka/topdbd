import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

final class TopPlayersView extends StatefulWidget {
  @override
  State<TopPlayersView> createState() => _TopPlayersViewState();
}

final class _TopPlayersViewState extends State<TopPlayersView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
                    Icon(Icons.stacked_bar_chart, color: Colors.white,),
                    Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: Text("TOP Players"),
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
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(color: Theme.of(context).colorScheme.secondary),
                      right: BorderSide(color: Theme.of(context).colorScheme.secondary))
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: "TOP Players from 1 to ∞",
                  items: const [
                    DropdownMenuItem<String>(
                      value: "TOP Players from 1 to ∞",
                      child: Center(
                          child: Text(
                              "TOP Players from 1 to ∞",
                              textAlign: TextAlign.center)
                      )
                    ),
                    DropdownMenuItem<String>(
                        value: "TOP Players from 25 to ∞",
                        child: Center(
                            child: Text(
                                "TOP Players from 25 to ∞",
                                textAlign: TextAlign.center)
                        )
                    ),
                  ],
                  onChanged: (String? value) {

                  },
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
              child: ListView.separated(
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 100, /// hasReachedMax == true ? listModel.length : listModel.length + 1
                  itemBuilder: (context,index) {
                   /*if(index >= listModel.length) {
                      return buildButtonMoreDataToListView();
                    }*/
                    if(index == 0) {
                      return _buildHeaderToListView(index,"Vicar32");
                    }
                    return _buildItemToListView(index,"Vicar32");
                  },
                  separatorBuilder: (context,index) {
                    return Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Theme.of(context).dividerColor))
                        )
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderToListView(int index,String username) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                    alignment: Alignment.center,
                    child: Text(
                        "Rank",
                        style: Theme.of(context).textTheme.bodyLarge)
                )
            ),
            Expanded(
              flex: 2,
              child: Text(
                  "Player",
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
            Expanded(
                child: Text(
                    'Rating',
                    style: Theme.of(context).textTheme.bodyLarge)),
            Expanded(
              child: Text(
                  "Victory %",
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
            Expanded(
              child: Text(
                  "Total matches played",
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
           /* Expanded(
                child: Text(
                    'Favorite Maniacs',
                    style: Theme.of(context).textTheme.bodyLarge)),*/
          ],
        ),
        const Divider(height: 2.0,thickness: 2.0,),
        _buildItemToListView(index,username),
      ],
    );
  }

  Widget _buildItemToListView(int index,String username) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Container(
                alignment: Alignment.center,
                child: Text('#${index + 1}')
            )
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                    'assets/icon/flags/france.png',
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover),
                const SizedBox(width: 2,),
                RichText(
                    text: TextSpan(
                      text: username,
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize),
                      recognizer: TapGestureRecognizer()..onTap = () {
                      },
                    )
                ),
              ],
            ),
          ),
        ),
        const Expanded(
            child: Text("300")),
        const Expanded(
          child: Text("100%"),
        ),
        const Expanded(
          child: Text("10"),
        ),
       /* Expanded(
            child: Wrap(
              children: [
                Image.asset(
                    'assets/icon/dbd/maniac/maniac_trapper.png',
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover),
                Image.asset(
                    'assets/icon/dbd/maniac/maniac_kolya.png',
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover),
                Image.asset(
                    'assets/icon/dbd/maniac/maniac_nurse.png',
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover),
              ],)
        ),*/
      ],
    );
  }
}