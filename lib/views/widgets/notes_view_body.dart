import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_App_bar.dart';
import 'package:notes_app/views/widgets/custom_listview_builder.dart';



class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return   const Padding(
      padding:   EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
       SizedBox(height: 10,),
       CustomAppBar(text:"Notes" ,icon:Icons.search ,),
          SizedBox(height: 20,),
      
       CustomListViewBuilder(),
      
      ],),
    );
  }
}


