import 'package:hive/hive.dart';

part 'Note_Model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String tital;
  @HiveField(1)
  final String subtital;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel(
      {required this.tital,
      required this.subtital,
      required this.date,
      required this.color});
}
