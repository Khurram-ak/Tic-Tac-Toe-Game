import 'package:flutter/material.dart';
import 'package:tic_tac_assignment3/screens/game.dart';
import 'package:tic_tac_assignment3/screens/leader_board.dart';
import 'package:tic_tac_assignment3/screens/splash.dart';
import 'package:tic_tac_assignment3/screens/win.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Splash()
    );
  }
}

