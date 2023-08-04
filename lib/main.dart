import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/current.dart';
import 'package:flutter_spotify_ui/data/data.dart';
import 'package:flutter_spotify_ui/play_list.dart';
import 'package:flutter_spotify_ui/provider/provider.dart';
import 'package:flutter_spotify_ui/splashscreen.dart';
import 'package:provider/provider.dart';
import 'sidemenu.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Changesong(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xff121212),
          fontFamily: "Montserrat",
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          textTheme: TextTheme(
              displayLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.white),
              displayMedium: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 12,
              ),
              displaySmall: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0,
              ))),
      home: screen(),
    );
  }
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              sidemenu(),
              Expanded(
                  child: play_list(
                playlist: lofihiphopPlaylist,
              ))
            ],
          ),
        ),
        Container(
          height: 90,
          width: double.infinity,
          color: Colors.black87,
          child: current(),
        ),
      ],
    ));
  }
}
