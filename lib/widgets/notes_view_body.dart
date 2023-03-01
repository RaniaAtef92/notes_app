import 'package:flutter/material.dart';
import 'package:note_app/Views/EditView.dart';
import 'package:note_app/oop/Custom_Text_Field.dart';
import 'package:note_app/oop/Custom_Item.dart';
import 'package:note_app/oop/Custom_button.dart';

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

class NoteBottom extends StatefulWidget {
  const NoteBottom({super.key});

  @override
  State<NoteBottom> createState() => _NoteBottomState();
}

class _NoteBottomState extends State<NoteBottom> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, contant;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: formkey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            const SizedBox(height: 20),
            CustomTextField(
              onsaved: (v) {
                title = v;
              },
              hint: 'title',
            ),
            CustomTextField(
              onsaved: (v) {
                contant = v;
              },
              hint: 'contant',
              maxlins: 5,
            ),
            CustomButton(
                text: 'add',
                ontap: () {
                  if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {

                      });
                  }
                },
                ),
          ],
        ),
      ),
    );
  }
}
