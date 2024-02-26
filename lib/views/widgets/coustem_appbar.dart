import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoustemAppbar extends StatelessWidget {
 const CoustemAppbar({required this.btnIcon});
   final btnIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              ' Hassan J',
              style: GoogleFonts.sourceCodePro(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
              color: const Color.fromARGB(41, 134, 97, 51),
              borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: IconButton(
              onPressed: () {
                print('search') ;
              },
              icon: btnIcon,
              iconSize: 30,
            ),
          ),
        ),
      ],
    );
  }
}
