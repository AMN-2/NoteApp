import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noteapp/views/widgets/CustemTextField.dart';

class AddNoteForm extends StatefulWidget {
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  AutovalidateMode validatemode = AutovalidateMode.onUserInteraction; 

  final _formKey = GlobalKey<FormState>();
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: validatemode,
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Add New Note ',
              style: GoogleFonts.dosis(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustemTextField(
            onSavedFunc: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustemTextField(
            onSavedFunc: (value) {
              subtitle = value;
            },
            hint: 'Subtitle',
            maxLines: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 134, 97, 51),
            ),
            height: 50,
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.green,
                      content: Center(
                        child: Text(
                          'Done',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                  _formKey.currentState!.save();
                  Navigator.pop(context);
                } else {
                  setState(() {
                    validatemode = AutovalidateMode.always;
                  });
                }
              },
              child: Center(
                child: Text(
                  'Add',
                  style: GoogleFonts.sourceCodePro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
