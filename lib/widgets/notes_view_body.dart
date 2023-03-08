import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/Adde_note_cubit/Add_Note_cubit.dart';
import 'package:note_app/oop/Custom_Item.dart';
import 'package:note_app/widgets/add_bottom_sheet.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

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

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  bool isloadind = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddnoteCubit(),
      child: BlocConsumer<AddnoteCubit, AddnoteState>(
        listener: (context, state) {
          if (state is AddnoteSuccess) {
            Navigator.pop(context);
          }
          if (state is AddnoteFailuer) {
            print('Plese Try Agin ${state.errmessage}');
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddnoteLodind ? true : false,
              child: const SingleChildScrollView(child: NoteBottom()));
        },
      ),
    );
  }
}
