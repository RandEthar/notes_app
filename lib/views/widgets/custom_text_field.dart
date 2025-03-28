import 'package:flutter/material.dart';
import 'package:notes_app/constent.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,this.maxLines=1, this.onSaved});
   final String hint;
final  int maxLines;
final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: (value) {
        if (value?.isEmpty??true) {
           return "Field is required";
        }else{
          return null;
        }
      },
      onSaved:onSaved ,
      maxLines:maxLines ,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText:hint,
        hintStyle:const TextStyle(
          color: kPrimaryColor
        ),
        border: buildBorder(), 
          enabledBorder: buildBorder(), 
      focusedBorder: buildBorder(color: kPrimaryColor),
      
      
      ),
    );
  }

  OutlineInputBorder buildBorder({Color ?color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
       borderSide:BorderSide(

        color: color??Colors.white
       ),
    );
  }
}
