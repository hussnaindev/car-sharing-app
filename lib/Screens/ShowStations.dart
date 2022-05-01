import 'package:flutter/material.dart';
import 'package:ride_sharing_app/CustomWidgets/ShowStationsTile.dart';
import 'package:ride_sharing_app/Screens/Filter.dart';
import 'package:ride_sharing_app/Screens/RentCarDetails.dart';

class ShowStations extends StatelessWidget {
  const ShowStations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.07,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const ImageIcon(
            AssetImage('close.png'),
          ),
        ),
        title: const Text(
          "2/27 - 3/2 | MY CURRENT LOCATION",
          style: TextStyle(fontSize: 12),
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.deepOrange,
        height: MediaQuery.of(context).size.height * 0.93,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black45))),
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Filter()));
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.filter_alt_outlined,
                          color: Colors.white,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 15, 0)),
                        Text(
                          'FILTER',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 0, 15, 0)),
                  const Icon(
                    Icons.sort,
                    color: Colors.white,
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 0, 15, 0)),
                  const Text(
                    'SORT',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RentCarDetails()));
                  },
                  child: ShowStationsTile(
                      carName: 'Renault Captur',
                      carCompany: 'SUV',
                      miles: '900',
                      costPerDay: '90.11',
                      totalCost: '270.32',
                      carImage: Image.asset(
                        'renault_captur2.png',
                        height: MediaQuery.of(context).size.height * 0.18,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RentCarDetails()));
                  },
                  child: ShowStationsTile(
                      carName: 'Peugeot',
                      carCompany: 'Sedan',
                      miles: '900',
                      costPerDay: '90.56',
                      totalCost: '271.67',
                      carImage: Image.asset(
                        'peugeot.png',
                        height: MediaQuery.of(context).size.height * 0.18,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RentCarDetails()));
                  },
                  child: ShowStationsTile(
                      carName: 'Renault Captur',
                      carCompany: 'SUV',
                      miles: '900',
                      costPerDay: '200',
                      totalCost: '270.67',
                      carImage: Image.asset(
                        'renault_captur2.png',
                        height: MediaQuery.of(context).size.height * 0.18,
                      )),
                )
              ],
            ))
            // Expanded(
            //   child: Container(
            //     padding: const EdgeInsets.fromLTRB(40, 50, 40, 0),
            //     child: Column(
            //       children: const [
            //         Icon(
            //           Icons.car_rental,
            //           size: 150,
            //         ),
            //         Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
            //         Text(
            //           'Not Found',
            //           style: TextStyle(fontWeight: FontWeight.bold),
            //         ),
            //         Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
            //         Text(
            //             'Please select a different location, a different time or a different offer.'),
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
