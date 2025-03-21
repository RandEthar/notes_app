


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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String ? title,subTitle;
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      
      autovalidateMode:autovalidateMode,
    key: formKey,
      child: Column(children: [
        const  SizedBox(height: 36,)
      ,CustomTextField(hint: 'Title',
      //!
      onSaved: (value) {
        title=value;
      },),
        const SizedBox(height: 16,),
      CustomTextField(hint: 'content',maxLines: 5,
         //!
      onSaved: (value) {
        subTitle=value;
      },)
      , const  SizedBox(height:40,),
      
   CustomButton(onTap: () {
       if(formKey.currentState!.validate()){
        formKey.currentState!.save();
       }else{
        autovalidateMode=AutovalidateMode.always;
        setState(() {
          
        });
       }
     },),
       const  SizedBox(height: 16,),
      ],),
    );
  }
}

