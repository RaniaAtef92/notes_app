import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:note_app/Models/Note_Model.dart';

import '../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fechAllNotes()async{
     
    try {
      var notebox = Hive.box<NoteModel>(kNotesBox);
      
      emit(NotesSuccess(notebox.values.toList()));
    } catch (e) {
      emit(NotesFailuer(e.toString()));
    }
  }
}
