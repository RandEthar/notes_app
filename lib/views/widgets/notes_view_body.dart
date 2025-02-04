import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_App_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Column(children: [
     Padding(
       padding:EdgeInsets.symmetric(horizontal: 12),
       child: CustomAppBar(),
     )




    ],);
  }
}

