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
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const ImageIcon(
                  AssetImage("close.png"),
                ),
              ),
              const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Form(
                  child: TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrange)),
                  label: Text('SEARCH FOR CITY OR PLACE'),
                ),
              )),
            ],
          ),
        ),
        header: Container(
          padding: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: const Text(
            'LIVE LOCATION',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        panelBuilder: (ScrollController sc) => ListView(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          children: [
            Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: const ListTile(
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
              margin: const EdgeInsets.fromLTRB(15, 40, 0, 40),
              child: const Text(
                'HISTORY',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: (MediaQuery.of(context).size.width) * 0.15,
                      child: const ImageIcon(AssetImage("wall-clock.png"))),
                  Container(
                    width: (MediaQuery.of(context).size.width) * 0.70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Azadi Chowk Roundabout',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Container(
                          child: const Text(
                            'Azadi Chowk Roundabout, Walled City of Lahore, Lahore, Pakistan',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width) * 0.15,
                      child: const Icon(Icons.favorite_outline))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: (MediaQuery.of(context).size.width) * 0.15,
                      child: const ImageIcon(AssetImage("wall-clock.png"))),
                  Container(
                    width: (MediaQuery.of(context).size.width) * 0.70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Rab Nawaz Quran Company',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Container(
                          child: const Text(
                            'Rab Nawaz Quran Company, Urdu Bazar Lahore, Pakistan',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width) * 0.15,
                      child: const Icon(Icons.favorite_outline))
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
