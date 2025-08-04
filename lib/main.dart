import 'package:flutter/material.dart';
import 'package:filmiko/Screen/Screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:filmiko/model/film.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(FilmAdapter()); // Adapteri kayıt et

  await Hive.openBox<Film>('userFilms');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainScreen(), debugShowCheckedModeBanner: false);
  }
}
