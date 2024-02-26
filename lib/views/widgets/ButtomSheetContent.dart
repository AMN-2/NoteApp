import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/NoteForm.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class AddNoteButtomSheet extends StatelessWidget {
   AddNoteButtomSheet({super.key});
  final GlobalKey formKey = GlobalKey(); 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          opacity: 0.02,
          alignment: Alignment.center,
          image: AssetImage('images/2.png'),
        ),
      ),
      child: AddNoteForm(),
    );
  }
}

