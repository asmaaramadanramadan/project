import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Prediction_Screen1.dart';
import 'addPatient_screen.dart';
//import 'homePage.dart';
import 'home_screen.dart';

late SharedPreferences shared;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  shared = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomePage());
  }
}
