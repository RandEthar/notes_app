import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AddNoteCubit(),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
          if (state is AddNoteCubitSuccess) {
             context.read<NoteCubit>().fetchAllNotes();
            Navigator.of(context).pop();
             
          }
          if (state is AddNoteCubitFalier) {
            print("failied ${state.errorMassage}");
          }
        }, builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteCubitLoading,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  //!
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: const AddNoteForm(),
              ),
            ),
          );
        }));
  }
}
