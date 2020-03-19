import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './color.dart';

class PastNews extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Past News List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: generateMaterialColor(Palette.primary),
      ),
      home: HomeScreen(),
    );
  }
}
