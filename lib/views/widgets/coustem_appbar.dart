import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoustemAppbar extends StatelessWidget {
  const CoustemAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
              color: const Color.fromARGB(41, 134, 97, 51),
              borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
