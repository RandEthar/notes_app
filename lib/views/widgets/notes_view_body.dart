import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/views/widgets/custom_App_bar.dart';
import 'package:notes_app/views/widgets/custom_listview_builder.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    context.read<NoteCubit>().fetchAllNotes();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CustomAppBar(
            text: "Notes",
            icon: Icons.search,
          ),
          SizedBox(
            height: 20,
          ),
          CustomListViewBuilder(),
        ],
      ),
    );
  }
}
