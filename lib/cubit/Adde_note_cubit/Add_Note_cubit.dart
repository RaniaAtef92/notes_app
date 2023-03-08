import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/Models/Note_Model.dart';
import 'package:note_app/constants.dart';

part 'Add_Note_state.dart';

class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super(AddnoteInitial());

  addNote(NoteModel note) async {
    emit(AddnoteLodind());
    try {
      var notebox = Hive.box<NoteModel>(kNotesBox);
      await notebox.add(note);
      emit(AddnoteSuccess());
    } catch (e) {
      emit(AddnoteFailuer(e.toString()));
    }
  }
}
