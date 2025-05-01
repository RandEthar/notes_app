import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder:(context){
           return  EditNoteView (noteModel:noteModel ,);
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            color: Color(noteModel.color), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: ListTile(
                title:Text(
                 noteModel.title,
                  style: const TextStyle(fontSize: 26, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    noteModel.subTitle,
                    style: TextStyle(
                        fontSize: 18, color: Colors.black.withOpacity(0.5)),
                  ),
                ),
                trailing: IconButton(
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                    icon:const  FaIcon(FontAwesomeIcons.trash),
                    color: Colors.black,
                    onPressed: () {
                     noteModel.delete();
                     context.read<NoteCubit>().fetchAllNotes();
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
              noteModel.date,
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
