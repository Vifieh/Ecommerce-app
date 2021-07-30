import 'package:easy/res.dart';
import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int size;
  final String id;
  final Color color;
  final double price;

  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1.toString(),
      title: "Office Code",
      price: 2000,
      size: 12,
      description: dummyText,
      image: Res.fan,
      color: Color(0xFF3D82AE)),
  Product(
      id: 2.toString(),
      title: "Office fan",
      price: 2000,
      size: 12,
      description: dummyText,
      image: Res.fan,
      color: Color(0xFFD3A984)),
  Product(
      id: 3.toString(),
      title: "Hang Top",
      price: 2000,
      size: 12,
      description: dummyText,
      image: Res.fan,
      color: Color(0xFF989493)),
  Product(
      id: 4.toString(),
      title: "Old Fashion",
      price: 2000,
      size: 12,
      description: dummyText,
      image: Res.fan,
      color: Color(0xFFE6B398)),
  Product(
      id: 5.toString(),
      title: "Old Fashion",
      price: 2000,
      size: 12,
      description: dummyText,
      image: Res.fan,
      color: Color(0xFFFB7883)),
  Product(
      id: 6.toString(),
      title: "Old Fashion",
      price: 2000,
      size: 12,
      description: dummyText,
      image: Res.fan,
      color: Color(0xFFAEAEAE)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.";
