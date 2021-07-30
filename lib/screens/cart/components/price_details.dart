import 'package:flutter/material.dart';

import '../../../constants.dart';

class PriceDetails extends StatefulWidget {
  @override
  _PriceDetailsState createState() => _PriceDetailsState();
}

class _PriceDetailsState extends State<PriceDetails> {
  List<String> priceDetails = const [
    "Sub Total",
    "Discount",
    "Delivery",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Price Details",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 15),
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: ListView.builder(
                    itemCount: priceDetails.length,
                    itemBuilder: (context, index) => buildPriceDetails(index),
                  ),
                ),
              ),
            )),
      ],
    );
  }

  Widget buildPriceDetails(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(priceDetails[index]),
        ],
      ),
    );
  }
}
