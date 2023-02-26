import 'package:flutter/material.dart';
import 'package:note_app/oop/Custom_Text_Field.dart';

class EditViwe extends StatelessWidget {
  const EditViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: const Text(
            'Edit Not',
            style: TextStyle(fontSize: 30),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.check,
                  size: 30,
                ))
          ]),
      body: Column(
        children: const [
          CustomTextField(hint: 'title'),
          CustomTextField(
            hint: 'content',
            maxlins: 5,
          )
        ],
      ),
    );
  }
}
