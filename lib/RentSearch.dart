import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RentSearch extends StatefulWidget {
  const RentSearch({Key? key}) : super(key: key);

  @override
  _RentSearchState createState() => _RentSearchState();
}

class _RentSearchState extends State<RentSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: 530,
        minHeight: 530,
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: ImageIcon(
                  AssetImage("close.png"),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Form(
                  child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrange)),
                  label: Text('SEARCH FOR CITY OR PLACE'),
                ),
              )),
            ],
          ),
        ),
        header: Container(
          padding: EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Text(
            'LIVE LOCATION',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        panelBuilder: (ScrollController sc) => ListView(
          padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: ListTile(
                leading: ImageIcon(
                  AssetImage("target.png"),
                  color: Colors.black,
                ),
                title: Text(
                  'Use my current location',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 40, 0, 40),
              child: Text(
                'HISTORY',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: (MediaQuery.of(context).size.width) * 0.15,
                      child: ImageIcon(AssetImage("wall-clock.png"))),
                  Container(
                    width: (MediaQuery.of(context).size.width) * 0.70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Azadi Chowk Roundabout',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Container(
                          child: Text(
                            'Azadi Chowk Roundabout, Walled City of Lahore, Lahore, Pakistan',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width) * 0.15,
                      child: Icon(Icons.favorite_outline))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: (MediaQuery.of(context).size.width) * 0.15,
                      child: ImageIcon(AssetImage("wall-clock.png"))),
                  Container(
                    width: (MediaQuery.of(context).size.width) * 0.70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rab Nawaz Quran Company',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Container(
                          child: Text(
                            'Rab Nawaz Quran Company, Urdu Bazar Lahore, Pakistan',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width) * 0.15,
                      child: Icon(Icons.favorite_outline))
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
