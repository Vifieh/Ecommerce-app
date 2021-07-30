import 'package:flutter/material.dart';

class ShopDetails extends StatelessWidget {
  final List<String> shops = <String>['A', 'B', 'c'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: shops.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            child: Center(child: Text('Shop ${shops[index]}')),
          );
        });
  }
}
