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
      body: Column(
        children: [
          CustomItem(
            color: Colors.amber,
          ),
          CustomItem(color: Colors.blue),
                    

        ],
      ),
    );
  }
}
