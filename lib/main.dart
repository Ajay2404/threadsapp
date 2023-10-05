import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:threadsapp/routes/index.dart';
import 'package:threadsapp/screens/auth_screens/splashScreen/splashScreen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
      getPages: appRoute.getPages,
      debugShowCheckedModeBanner: false,
    );
  }
}
