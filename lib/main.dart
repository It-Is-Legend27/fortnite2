// App: Fortnite 2
// Author: Angel Badillo Hernandez
// Date: 06/03/22
// Description: Simple app inspired by "I Am Rich" IOS App
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// The main function is the starting point
// for all our flutter apps
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void playSound() {
    final player = AudioCache();
    //player.fixedPlayer;
    player.loop('floss.mp3');
  }

  @override
  Widget build(BuildContext context) {
    playSound();
    return MaterialApp(
      debugShowCheckedModeBanner: false, // I don't like the debug banner...
      home: Scaffold(
        backgroundColor: Colors.lightBlue[900],
        appBar: AppBar(
          title: const Center(
              child: Text(
            "FORTNITE 2",
            style: TextStyle(
              fontFamily: 'Burbank',
              fontSize: 50.0,
            ),
          )),
          backgroundColor: Colors.blue,
        ),
        body: Center(child: Image.asset('images/thelegend.gif')),
      ),
    );
  }
}
