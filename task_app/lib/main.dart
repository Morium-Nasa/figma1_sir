import 'package:flutter/material.dart';
import 'package:task_app/screen/pages/authentication/login.dart';
import 'package:task_app/screen/pages/authentication/registation1.dart';
import 'package:task_app/screen/pages/authentication/registation2.dart';
import 'package:task_app/screen/pages/authentication/tabs/mainPage.dart';
import 'package:task_app/screen/pages/gridView.dart';
import 'package:task_app/screen/pages/tab/tabBar.dart';
import 'package:task_app/screen/stepper/stepper1.dart';
import 'package:task_app/screen/stepper/stepper2.dart';
import 'package:task_app/screen/stepper/stepper3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      "stepper1": (BuildContext context) => StepperOne(),
      "stepper2": (BuildContext context) => StepperTwo(),
      "stepper3": (BuildContext context) => StepperThree(),
      "loginPage": (BuildContext context) => LoginPage(),
      "registation1": (BuildContext context) => Registation1(),
      "registation2": (BuildContext context) => Registation2(),
    }, debugShowCheckedModeBanner: false, home: TtabBar());
  }
}
