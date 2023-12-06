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
        color: Colors.transparent,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  const Icon(Icons.stacked_bar_chart),
                  const SizedBox(width: 2,),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text("TOP Players",
                      style: Theme.of(context).textTheme.bodyLarge,),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.0,
              color: Theme.of(context).dividerColor,),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(color: Theme.of(context).dividerColor),
                      right: BorderSide(color: Theme.of(context).dividerColor))
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: "1 - ∞",
                  items: const [
                    DropdownMenuItem<String>(
                      value: "1 - ∞",
                      child: Center(
                          child: Text(
                              "1 - ∞",
                              textAlign: TextAlign.center)
                      )
                    ),
                    DropdownMenuItem<String>(
                        value: "25 - ∞",
                        child: Center(
                            child: Text(
                                "25 - ∞",
                                textAlign: TextAlign.center)
                        )
                    ),
                  ],
                  onChanged: (String? value) {

                  },
                ),
              ),
            ),
            Divider(
              height: 1.0,
              color: Theme.of(context).dividerColor,),
            ListView.separated(
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 100, /// hasReachedMax == true ? listModel.length : listModel.length + 1
                itemBuilder: (context,index) {
                 /*if(index >= listModel.length) {
                    return buildButtonMoreDataToListView();
                  }*/
                  if(index == 0) {
                    return _getHeaderToListViewWhereItemToListViewFromIndexAndUsername(index,"Vicar32");
                  }
                  return _getItemToListViewFromIndexAndUsername(index,"Vicar32");
                },
                separatorBuilder: (context,index) {
                  return Divider(
                    height: 1.0,
                    color: Theme.of(context).dividerColor,);
                }),
          ],
        ),
      ),
    );
  }

  Widget _getHeaderToListViewWhereItemToListViewFromIndexAndUsername(int index,String username) {
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
              child: Row(
                children: [
                  Image.asset(
                      'assets/icon/flags/unknown.png',
                      width: 32,
                      height: 32,
                      fit: BoxFit.cover),
                  const SizedBox(width: 2,),
                  Text(
                      "Player",
                      style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
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
        Divider(
          height: 2.0,
          thickness: 2.0,
          color: Theme.of(context).dividerColor,),
        _getItemToListViewFromIndexAndUsername(index,username),
      ],
    );
  }

  Widget _getItemToListViewFromIndexAndUsername(int index,String username) {
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