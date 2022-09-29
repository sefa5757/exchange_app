import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_5/Singin.dart';
import 'package:flutter_application_5/Login.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: const Login());
  }
}
