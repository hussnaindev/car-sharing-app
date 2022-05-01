import 'package:flutter/material.dart';
import 'package:ride_sharing_app/Screens/MoreInfo.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

enum RentPayment { payLater, payNow }

class RentCarDetails extends StatefulWidget {
  const RentCarDetails({Key? key}) : super(key: key);

  @override
  _RentCarDetailsState createState() => _RentCarDetailsState();
}

class _RentCarDetailsState extends State<RentCarDetails> {
  RentPayment _payment = RentPayment.payLater;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.08,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        body: SlidingUpPanel(
          minHeight: MediaQuery.of(context).size.height * 0.65,
          parallaxEnabled: true,
          renderPanelSheet: false,
          body: Container(
            height: MediaQuery.of(context).size.height * 0.27,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Image.asset('renault_captur2.png')],
            ),
          ),
          panel: Container(
            color: Colors.white,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border:
                          Border(bottom: BorderSide(color: Colors.black26))),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.black,
                        child: const Text(
                          'PEOGEOT 308',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                      const Text(
                        'Peugeot 308, VM Golf, Skoda Scala or similar | Sedan',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Icon(Icons.people_outlined),
                              Text(
                                '5 Seats',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              Icon(Icons.book_outlined),
                              Text(
                                'Manual',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              Icon(Icons.sensor_door_outlined),
                              Text(
                                '5 Doors',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MoreInfo()));
                            },
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.more_horiz_outlined,
                                  color: Colors.deepOrange,
                                ),
                                Text(
                                  'More',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.deepOrange),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border:
                          Border(bottom: BorderSide(color: Colors.black26))),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'BOOKING DETAILS',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                      Row(
                        children: const [
                          Icon(Icons.place_outlined),
                          Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                          Text(
                            'London Heathrow AP T2, T3, T4',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                      Row(
                        children: const [
                          Icon(Icons.calendar_today_outlined),
                          Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                          Text(
                            'Sun 2/27, 12:00PM - Wed 3/2, 12:00PM',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                      Row(
                        children: const [
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.deepOrange,
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                          Text(
                            'Change booking details',
                            style: TextStyle(
                                fontSize: 12, color: Colors.deepOrange),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border:
                          Border(bottom: BorderSide(color: Colors.black26))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'PAYMENT',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                      ListTile(
                        title: const Text(
                          'PAY LATER  + Rs 26.77',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        subtitle: const Text(
                          'Make Changes to your booking and cancel for free anytime',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                        leading: SizedBox(
                          width: 0,
                          child: Radio(
                            value: RentPayment.payLater,
                            groupValue: _payment,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                      ListTile(
                        title: const Text(
                          'PAY NOW',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        subtitle: const Text(
                            'Get the best price by paying in advance. Cancellation fee may apply',
                            style:
                                TextStyle(color: Colors.black, fontSize: 12)),
                        leading: SizedBox(
                          width: 0,
                          child: Radio(
                            value: RentPayment.payNow,
                            groupValue: _payment,
                            onChanged: (value) {},
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  color: const Color(0xff191919),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Total',
                                style: TextStyle(color: Colors.white),
                              ),
                              const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.deepOrange,
                                  ),
                                  Text('Price breakdown',
                                      style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 12))
                                ],
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text(
                                    'Rs',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(' 271',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  Text('.67',
                                      style: TextStyle(color: Colors.white))
                                ],
                              ),
                              const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                              const Text('Rs 202.98',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12))
                            ],
                          )
                        ],
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
                      Container(
                        color: Colors.deepOrange,
                        height: (MediaQuery.of(context).size.height * 0.07),
                        width: (MediaQuery.of(context).size.width - 40),
                        alignment: Alignment.center,
                        child: const Text(
                          'CONTINUE',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
