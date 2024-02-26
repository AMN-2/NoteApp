// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustemTextField extends StatelessWidget {
  const CustemTextField({super.key, required this.hint, this.maxLines = 1, this.onSavedFunc});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSavedFunc;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      cursorErrorColor: Colors.red,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'field is reqierd ';
        } else {
          return null;
        }
      },
      onSaved: onSavedFunc,
      maxLines: maxLines,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 134, 97, 51),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        label: Text(hint),
        labelStyle: GoogleFonts.sourceCodePro(
          fontSize: 20,
        ),
      ),
    );
  }
}
