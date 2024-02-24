import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/ButtomSheetContent.dart';
// import 'package:noteapp/views/widgets/ButtomSheetContent.dart';

class Add_Note extends StatelessWidget {
  const Add_Note({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: const Color.fromARGB(255, 134, 97, 51),
      onPressed: () {
        showModalBottomSheet<void>(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          context: context,
          builder: (BuildContext context) {
            return const AddNoteButtomSheet();
          },
        );
      },
      child: const Icon(
        Icons.add,
        size: 30,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
