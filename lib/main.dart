import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/Models/Note_Model.dart';
import 'package:note_app/Views/NotesView.dart';
import 'package:note_app/bloc_observer.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubit/Adde_note_cubit/Add_Note_cubit.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      
      providers: [
         BlocProvider(
      create: (context) => AddnoteCubit()),
      ],
      child: MaterialApp(
          theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
          debugShowCheckedModeBanner: false,
          home: const NotesView()),
    );
  }
}
