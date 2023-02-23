import 'package:flutter/material.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark, bottomAppBarColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: const NotesApp(),
    );
  }
}
