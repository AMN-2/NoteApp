// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:noteapp/views/widgets/coustem_appbar.dart';
import 'package:noteapp/views/widgets/note_Item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Color.fromARGB(255, 134, 97, 51),
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 30,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      backgroundColor: const Color.fromARGB(221, 35, 35, 35),
      // drawer: Drawer(),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/2.png'),
          ),
        ),
        // color: Colors.white,
        child: Column(
          children: [
            // coustem appbar
            CoustemAppbar(),
            // coustem appbar
            Container(
              width: double.infinity,
              // color: Colors.amber,
              height: 700,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: NoteItem(mainColor: Color.fromARGB(255, 114, 63, 0)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
