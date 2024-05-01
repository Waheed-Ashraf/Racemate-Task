import 'package:flutter/material.dart';
import 'package:optomatica_flutter_task/core/bottomNavBar/bottom_nav_bar.dart';
import 'package:optomatica_flutter_task/core/utils/service_locator.dart';

void main() {
  runApp(const MyApp());
  serviceLocator();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: const BottomNavBar(),
    );
  }
}
