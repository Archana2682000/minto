import 'package:flutter/material.dart';
import 'package:untitled10/payment1.dart';

import 'package:untitled10/product.dart';
import 'package:untitled10/product1.dart';
import 'package:untitled10/product2.dart';
import 'package:untitled10/product3.dart';
import 'package:untitled10/product4.dart';
import 'package:untitled10/product5.dart';
import 'package:untitled10/product6.dart';
import 'package:untitled10/product7.dart';
import 'package:untitled10/splash.dart';
import 'package:untitled10/splash1.dart';

import 'login 1.dart';
import 'order.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Splash());
  }
}
