import 'package:flutter/material.dart';

class MoreInfo extends StatelessWidget {
  const MoreInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.close,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            const Text(
              'MORE INFO',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
            Row(
              children: const [
                Icon(Icons.people_outlined),
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                Text(
                  '5 Seats',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            Row(
              children: const [
                Icon(Icons.sensor_door_outlined),
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                Text(
                  '5 Doors',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            Row(
              children: const [
                Icon(Icons.work_outline_outlined),
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                Text(
                  '2 Suitcases',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            Row(
              children: const [
                Icon(Icons.business_center_outlined),
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                Text(
                  '2 Hand Luggage',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            Row(
              children: const [
                Icon(Icons.book_outlined),
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                Text(
                  'Manual',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            Row(
              children: const [
                Icon(Icons.ac_unit),
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                Text(
                  'AC',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
            const Text(
              'INFO FOR YOUNG DRIVERS',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Drivers minimum age',
                    style: TextStyle(fontSize: 12, color: Colors.black)),
                Text('25 Years')
              ],
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Driving Experience',
                    style: TextStyle(fontSize: 12, color: Colors.black)),
                Text('1 year')
              ],
            )
          ],
        ),
      ),
    );
  }
}
