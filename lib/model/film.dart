import 'package:hive/hive.dart';

part 'film.g.dart';  // Build runner ile otomatik üretiliyor

@HiveType(typeId: 0)
class Film extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String description;

  @HiveField(2)
  DateTime releaseDate;

  @HiveField(3)
  double rating;

  Film({required this.title, required this.description, required this.releaseDate, required this.rating});
}
