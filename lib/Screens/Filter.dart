import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  double _noOfSeats = 5;
  int _seatsLabelValue = 5;
  double _minimumAge = 21;
  int _minimumAgeLabel = 21;
  bool minibus = false;
  bool sedan = false;
  bool stationwagon = false;
  bool suv = false;
  bool automatic = false;
  bool gps = false;
  bool suitcases = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.close_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: const Text(
              'CLEAR ALL',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Filter',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              const Text(
                'VEHICLE TYPES',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.time_to_leave_outlined,
                        size: 40,
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                      Text(
                        'MINIBUS',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.time_to_leave_outlined,
                        size: 40,
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                      Text(
                        'SEDAN',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.time_to_leave_outlined,
                        size: 40,
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                      Text(
                        'STATION WAGON',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.time_to_leave_outlined,
                        size: 40,
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                      Text(
                        'SUV',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              const Text(
                'OTHERS',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.autorenew_outlined,
                        size: 40,
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                      Text(
                        'AUTOMATIC',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            gps = !gps;
                          });
                        },
                        icon: Icon(Icons.share_location_outlined,
                            size: 40,
                            color: gps ? Colors.deepOrange : Colors.black),
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                      Text(
                        'GPS',
                        style: TextStyle(
                            fontSize: 10,
                            color: gps ? Colors.deepOrange : Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            suitcases = !suitcases;
                          });
                        },
                        icon: Icon(
                          Icons.work_outline_outlined,
                          size: 40,
                          color: suitcases ? Colors.deepOrange : Colors.black,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                      Text(
                        '2+ SUITCASES',
                        style: TextStyle(
                            fontSize: 10,
                            color: suitcases ? Colors.deepOrange : Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              const Text(
                'NO. OF SEATS',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '$_seatsLabelValue',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
              Slider(
                thumbColor: Colors.grey,
                activeColor: Colors.deepOrange,
                value: _noOfSeats,
                onChanged: (double value) {
                  setState(() {
                    _noOfSeats = value;
                    _seatsLabelValue = value.round();
                  });
                },
                divisions: 4,
                min: 5,
                max: 9,
              ),
              const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              const Text(
                'DRIVERS MINIMUM AGE',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '$_minimumAgeLabel',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
              Slider(
                thumbColor: Colors.grey,
                activeColor: Colors.deepOrange,
                value: _minimumAge,
                onChanged: (double value) {
                  setState(() {
                    _minimumAge = value - 0.5;

                    _minimumAgeLabel = value.round();
                  });
                },
                divisions: 9,
                min: 21,
                max: 30,
              ),
            ],
          ),
        ]),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        color: Colors.white,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          margin: const EdgeInsets.all(25),
          color: Colors.deepOrange,
          alignment: Alignment.center,
          child: const Text(
            'SHOW 20 OFFERS',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
