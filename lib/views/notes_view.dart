// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noteapp/views/widgets/note_Item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Color.fromARGB(255, 155, 240, 255),
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 30,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      backgroundColor: const Color.fromARGB(221, 35, 35, 35),
      // drawer: Drawer(),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        // color: Colors.white,
        child: Column(
          children: [
            // coustem appbar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Notes',
                  style: GoogleFonts.sourceCodePro(
                    fontSize: 35,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 37, 37, 37),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
                    child: NoteItem(mainColor: Color.fromARGB(255, 185, 247, 187) ),
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
