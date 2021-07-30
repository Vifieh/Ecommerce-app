import 'package:easy/constants.dart';
import 'package:easy/models/product.dart';
import 'package:easy/screens/details/components/cart_counter.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  final Product product;

  const CartCard({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(kDefaultPadding),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Hero(
                    tag: "${product.id}",
                    child: Image.asset(product.image),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding / 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        style: TextStyle(
                            color: kTextLightColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text(
                        '${product.price} \XAF',
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      CartCounter()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
