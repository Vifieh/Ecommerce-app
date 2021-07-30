import 'package:easy/res.dart';
import 'package:easy/screens/shops/shop_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding),
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Card(
                      color: Colors.white,
                    ),
                  ),
                ),
                Text('Easy Buy'),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: SvgPicture.asset(
                Res.home,
                color: kTextColor,
              ),
            ),
            title: Text('Home'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: IconButton(
              icon: SvgPicture.asset(
                Res.category,
                color: kTextColor,
              ),
            ),
            title: Text('Categories'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: IconButton(
              icon: SvgPicture.asset(
                Res.category,
                color: kTextColor,
              ),
            ),
            title: Text('Shops'),
            onTap: () {
              // Update the state of the app
              // ...
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShopScreen()),
              );
              // Then close the drawer
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: IconButton(
              icon: SvgPicture.asset(
                Res.order,
                color: kTextColor,
              ),
            ),
            title: Text('Orders'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: IconButton(
              icon: SvgPicture.asset(
                Res.about_us,
                color: kTextColor,
              ),
            ),
            title: Text('About Us'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: IconButton(
              icon: SvgPicture.asset(
                Res.login,
                color: kTextColor,
              ),
            ),
            title: Text('Login'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
