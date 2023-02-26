import 'package:flutter/material.dart';
import 'package:note_app/oop/CustomTextfield.dart';
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

class NoteBottom extends StatelessWidget {
  const NoteBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(height: 20),
          CustomTextField(
            hint: 'title',
          ),
          CustomTextField(
            hint: 'contant',
            maxlins: 5,
          ),
        ],
      ),
    );
  }
}
