import 'package:flutter/material.dart';

class Shoes {
  late String price;
  late String title;
  late String subTitle;
  late String imgPath;
  late Color bgColor;
  late int rating;

  Shoes({
    required this.price,
    required this.title,
    required this.subTitle,
    required this.imgPath,
    required this.bgColor,
    required this.rating,
  });
}

var shoes = [
  Shoes(
      price: '\$99',
      title: 'STYLISH PERFORMANCE SHOES',
      subTitle:
          '50%Kick your shoe game up a notch with these Stylish Performance Shoes!',
      imgPath: 'assets/images/shoes_1.png',
      bgColor: Color(0xFF5DB4EE),
      rating: 5),
  Shoes(
      price: '\$99',
      title: 'STYLISH PERFORMANCE SHOES',
      subTitle:
          '50%Kick your shoe game up a notch with these Stylish Performance Shoes!',
      imgPath: 'assets/images/shoes_1.png',
      bgColor: Color(0xFF5DB4EE),
      rating: 4),
];

var recommendShoes = [
  Shoes(
      price: '\$99',
      title: 'STYLISH PERFORMANCE SHOES',
      subTitle:
          '50%Kick your shoe game up a notch with these Stylish Performance Shoes!',
      imgPath: 'assets/images/shoes_1.png',
      bgColor: Color(0xFF5DB4EE),
      rating: 4),
  Shoes(
      price: '\$99',
      title: 'STYLISH PERFORMANCE SHOES',
      subTitle:
          '50%Kick your shoe game up a notch with these Stylish Performance Shoes!',
      imgPath: 'assets/images/shoes_1.png',
      bgColor: Color(0xFF5DB4EE),
      rating: 5),
];
