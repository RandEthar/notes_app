import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

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
        NoteModel note=NoteModel(title: title!,subTitle: subTitle!,date: DateTime.now.toString(),color: Colors.amber.value);
        context.read<AddNoteCubit>().addNote(note);
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