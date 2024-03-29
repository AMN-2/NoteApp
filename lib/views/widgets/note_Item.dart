// ignore_for_file: prefer_const_constructors, file_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noteapp/views/widgets/Edit_note_view.dart';

class NoteItem extends StatelessWidget {
  NoteItem({super.key, required this.mainColor});
  final Color mainColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteViwe();
        }));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/1.jpg'),
            opacity: 0.1,
          ),
          color: mainColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: GoogleFonts.dosis(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'A list tile contains one to three lines of text optionally flanked by icons or other widgets, such as check boxes. The icons (or other widgets) .',
                style: GoogleFonts.dosis(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                alignment: Alignment.center,
                onPressed: () {},
                icon: Icon(
                  Icons.delete_rounded,
                  size: 50,
                ),
              ),
              leading: Icon(
                Icons.person,
                size: 30,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'May 21,2022',
                style: GoogleFonts.dosis(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
