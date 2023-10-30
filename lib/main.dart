import 'package:flutter/material.dart';
import 'package:lastest_broo/view/adding.dart';
import 'package:lastest_broo/view/home.dart';
import 'package:lastest_broo/view/dashboard.dart';
import 'package:lastest_broo/view/sell.dart';
import 'package:lastest_broo/view/web/webview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Montserrat',
          scaffoldBackgroundColor: const Color(0xffF5F3EF)),
      initialRoute: '/home', // Set the initial route to '/home'
      routes: {
        '/home': (context) => HomePage(), // Define a route for HomePage
        '/dashboard': (context) => Dashboard(), // Define a route for Dashboard
        '/adding': (context) => Adding(), // Define a route for Adding
        '/sell': (context) => SellPage(), // Define a route for Adding
        '/webViewPage': (context) => WebviewPage(), // Define a route for Adding
      },
    );
  }
}
