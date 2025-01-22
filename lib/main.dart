import 'package:bike_service_app/screens/care_page_screen/care_page.dart';
import 'package:bike_service_app/screens/home_page_screen/home_page.dart';
import 'package:bike_service_app/screens/splash_page_screen/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bike Service',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: CarePage(),
    );
  }
}
