import 'package:flutter/material.dart';
import 'package:top_charts/screens/landing_page.dart';
import 'package:top_charts/screens/spotify_charts_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Top Music Chart",
      home: LandingPage(),
    );
  }
}
