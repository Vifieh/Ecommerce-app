import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../res.dart';
import 'components/shop_details.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ShopDetails(),
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
      title: Text("Shops", style: TextStyle(color: kTextColor)),
    );
  }
}
