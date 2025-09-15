
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(FalconsClubApp());
}

class FalconsClubApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'نادي صقور وادي السحب',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'Roboto',
      ),
      home: HomePage(),
    );
  }
}