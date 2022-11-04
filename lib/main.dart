import 'package:flutter/material.dart';
import 'package:lab4/constants.dart';
import 'package:lab4/screens/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flowaterin',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
	appBarTheme: AppBarTheme(backgroundColor: kPrimaryColor),
      ),
      home: HomeScreen(),
    );
  }
}
