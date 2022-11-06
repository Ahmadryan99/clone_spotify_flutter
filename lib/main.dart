import 'package:clone_spotify_flutter/app/pages/dashboard_page.dart';
import 'package:clone_spotify_flutter/app/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      home: SplashPage(),
    );
  }
}
