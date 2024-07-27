import 'package:flutter/material.dart';
class RecommendationPage extends StatelessWidget {
  const RecommendationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text("Nearby Restaurants"),
      elevation: 0.3,

    ),
    body: Center(
      child: Text("hi"),
    ),
    );
  }
}
