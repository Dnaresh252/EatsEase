import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DiscountCarousel extends StatelessWidget {
  final List<String> imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8zhabW7doHEf8D4MkcnFfOK56gjDW2ysvLg&s ',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbaqXrl7Tytc9v6TOO-xRAXLpp7OnMXqUJRw&s ',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYlrlK4kuMC14FJ1f1Arb_9uCH7frqDfCtjA&s ',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7YZiFSGXJ_RdmEeFlB0Qe3uxYc21ssc0XPw&s ',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkPfT5KkkL5Ap5KliBapmf5U0rZsTrhULAIA&s ',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0), // Add padding if needed
      child: CarouselSlider(
        options: CarouselOptions(

          height: 150.0,
          enlargeCenterPage: true,
          autoPlay: false,
          autoPlayInterval: Duration(seconds: 2),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          viewportFraction: 0.8,
        ),
        items: imageUrls.map((url) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.90, // Adjust width here
                 // Adjust height here
                margin: EdgeInsets.symmetric(horizontal: 7.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: NetworkImage(url),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(36),
                  boxShadow:  [
                  BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 4),
                  blurRadius: 8.0,
                  spreadRadius: 1.0,
                ),
                ],
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
