import 'package:flutter/material.dart';
import 'package:fluttertest/login_page.dart';
import 'package:fluttertest/pages/kalkulator_page.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:fluttertest/routes.dart';
import 'package:fluttertest/pages/registration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(title: "My App",
    initialRoute: Routes.registration,
    getPages: Routes.myPages,
    );
  }
}