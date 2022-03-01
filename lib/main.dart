import 'package:flutter/material.dart';
import 'package:ride_sharing_app/Filter.dart';
import 'package:ride_sharing_app/RentCarDetails.dart';
import 'package:ride_sharing_app/Screen1.dart';
import 'package:ride_sharing_app/ShowStations.dart';
import 'Welcome.dart';
import 'Rent.dart';
import 'RentSearch.dart';
import 'ShowStations.dart';
import 'RentCarDetails.dart';
import 'MoreInfo.dart';
import 'Screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Car Riding App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: const Screen2());
  }
}
