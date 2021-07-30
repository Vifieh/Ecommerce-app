import 'package:easy/screens/cart/components/cart_card.dart';
import 'package:easy/screens/cart/components/price_details.dart';
import 'package:easy/models/cart.dart';
import 'package:easy/models/product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Your Cart",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.normal),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: products.length,
                itemBuilder: (context, index) => CartCard(
                      product: products[index],
                    )),
          ),
        ),
        PriceDetails(),
      ],
    );
  }
}
