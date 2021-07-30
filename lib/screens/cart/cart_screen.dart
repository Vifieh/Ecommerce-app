import 'package:easy/screens/cart/components/cart_card.dart';
import 'package:easy/constants.dart';
import 'package:easy/res.dart';
import 'package:easy/screens/cart/components/cart_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: CartDetail(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          Res.back,
          color: kTextColor,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text("Cart", style: TextStyle(color: kTextColor)),
    );
  }
}
