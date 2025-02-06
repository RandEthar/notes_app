


import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_App_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
          SizedBox(height: 30,),
      CustomAppBar(text:"Edit Note",icon: Icons.check,),
    SizedBox(height: 30,),
      CustomTextField(hint: "Title"),
          SizedBox(height: 20,),
       CustomTextField(hint: "Content",maxLines: 5,)
      
      ],),
    );
  }
}