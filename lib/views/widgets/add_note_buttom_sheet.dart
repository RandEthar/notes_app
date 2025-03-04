


import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child:  SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 36,)
        ,CustomTextField(hint: 'Title',),
         SizedBox(height: 16,),
        CustomTextField(hint: 'content',maxLines: 5,)
        ,SizedBox(height:40,),
        
        CustomButton(),
         SizedBox(height: 16,),
        ],),
      ),
    );
  }
}

