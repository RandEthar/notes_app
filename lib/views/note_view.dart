import 'package:flutter/material.dart';
import 'package:notes_app/constent.dart';
import 'package:notes_app/views/widgets/add_note_buttom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        shape: const CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
       
              context: context,
              builder: (context) {
                return const AddNoteButtomSheet();
              });
        },
        child: const Icon(Icons.add,color: Colors.black,),
      ),
      body: const SafeArea(child: NotesViewBody()),
    );
  }
}
