// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/views/notes_view.dart';
void main() async{
  await Hive.initFlutter();  
  await Hive.openBox(kNotesBox) ;
  runApp(NoteApp());
}
class NoteApp extends StatelessWidget { 
  const NoteApp({super.key});
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 52, 44, 22),
          )),
      home: NotesView(),

    );
  }
}
