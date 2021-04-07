import 'package:flutter/material.dart';
import 'package:islamic_app/home.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'سبحه',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Splah(),
    );
  }
}

class Splah extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<Splah> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new Home(),
      title: new Text(
        'سبحه',
        style: new TextStyle(
            fontFamily: 'ElMessiri',
            fontWeight: FontWeight.bold,
            fontSize: 35.0,
            color: Colors.white),
      ),
      image: new Image.asset(
          "assets/images/ico.png"), //backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      useLoader: true,
      loaderColor: Colors.white,
      gradientBackground: LinearGradient(
        colors: [
          Colors.red[700],
          Colors.pink,
        ],
      ),
    );
  }
}
