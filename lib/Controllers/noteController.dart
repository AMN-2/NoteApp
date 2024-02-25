// ignore_for_file: avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/constants.dart';

class Note {
  void add(Color color, String title, String, subtitle) {
    var mainBox = Hive.box(kNotesBox);
    mainBox.put('title', title);
    mainBox.put('color', color);
    mainBox.put('subtitle', subtitle);
    print('Note Was Added ') ; 
  }
}