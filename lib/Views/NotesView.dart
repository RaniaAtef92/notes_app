import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/notes_view_body.dart';
import 'package:note_app/oop/Customitem.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 40,
                ))
          ],
          title: Text(
            'Nots',
            style: TextStyle(fontSize: 40),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 17, 17, 17),
          onPressed: (() {}),
          child: const Icon(
            Icons.add,
            color: Colors.blue,
            size: 30,
          ),
        ),
        body: const NotesViewBody());
  }
}
