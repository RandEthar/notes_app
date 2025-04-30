


import 'package:flutter/material.dart';
import 'package:notes_app/constent.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap,  this.isLoading=false});
final void Function()? onTap;
final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
         borderRadius: BorderRadius.circular(8)
        ),child:isLoading?Center(
          child: Transform.scale(
            scale: 0.5, 
            child:const CircularProgressIndicator(),
          ),
        )
        
         :const Center(child: Text("Add",style: TextStyle(
          fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold
        ),)),
      ),
    );
  }
}