import 'package:flutter/material.dart';
import 'package:note_app/oop/Customitem.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ListView.builder(
              
              itemBuilder: (context, index) => CustomItem(color: Colors.blue),
            ),
          ),
        ),
      ],
    );
  }
}
