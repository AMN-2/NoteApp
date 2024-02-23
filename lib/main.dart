// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 52, 44, 22),
      )),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
        child: Text(
          'Note App Is Here ',
          style: TextStyle(
            fontSize: 30,
            color: const Color.fromARGB(255, 52, 44, 22),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
