import 'package:hive/hive.dart';

part 'noteModel.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final int color;
  @HiveField(3)
  final String date;

  NoteModel({
    required this.title,
    required this.subtitle,
    required this.color,
    required this.date,
  });
}
