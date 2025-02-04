import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
         return const Padding(
           padding: EdgeInsets.only(bottom: 10),
           child: NoteItem(),
         );
      },)
    );
  }
}