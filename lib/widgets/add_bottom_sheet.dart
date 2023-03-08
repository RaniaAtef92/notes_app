import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Models/Note_Model.dart';
import 'package:note_app/cubit/Adde_note_cubit/Add_Note_cubit.dart';
import 'package:note_app/oop/Custom_Text_Field.dart';
import 'package:note_app/oop/Custom_button.dart';

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
      padding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom),
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
                  var noteModel = NoteModel(
                      tital: title!,
                      subtital: contant!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value);
                  BlocProvider.of<AddnoteCubit>(context).addNote(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
