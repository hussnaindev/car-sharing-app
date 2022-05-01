import 'package:flutter/material.dart';

class ShowStationsTile extends StatelessWidget {
  const ShowStationsTile(
      {Key? key,
      required this.carName,
      required this.carCompany,
      required this.miles,
      required this.costPerDay,
      required this.totalCost,
      required this.carImage})
      : super(key: key);
  final String carName;
  final String carCompany;
  final String miles;
  final String costPerDay;
  final String totalCost;
  final Image carImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black45))),
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: (MediaQuery.of(context).size.width - 30) * 0.50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.black,
                  child: Text(carName,
                      style: const TextStyle(
                          fontSize: 17,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold)),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                const Text('or similar | SUV',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                Row(
                  children: [
                    const Icon(Icons.check),
                    Text('incl. $miles miles',
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold))
                  ],
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'Rs ',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '90',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '.56 | day',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                Text('Rs $totalCost | total',
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Container(
              width: (MediaQuery.of(context).size.width - 30) * 0.50,
              child: carImage)
        ],
      ),
    );
  }
}
