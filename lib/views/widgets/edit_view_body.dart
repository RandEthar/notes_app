import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_App_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/edit_note_color_list.dart';
import 'package:notes_app/views/widgets/list_view_color_item.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.noteModel, this.onPressed});
  final NoteModel noteModel;
  final void Function()? onPressed;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
 String ?title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomAppBar(
            onPressed: () {
              widget.noteModel.title=title??widget.noteModel.title;
                widget.noteModel.subTitle=content?? widget.noteModel.subTitle;
                  widget.noteModel.save();
                  context.read<NoteCubit>().fetchAllNotes();
                  Navigator.of(context).pop();
            },
            text: "Edit Note",
            icon: Icons.check,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            hint:    widget.noteModel.title,
            onChanged: (value) {
              title=value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint:    widget.noteModel.subTitle,
            maxLines: 5,
            onChanged: (value) {
              content=value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
     EditNoteColorList(noteModel:widget.noteModel,)
        ],
      ),
    );
  }
}
