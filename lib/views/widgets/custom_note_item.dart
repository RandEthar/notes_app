import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder:(context){
           return const EditNoteView ();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            color:const  Color(0xffFFCC80), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: ListTile(
                title: const Text(
                  'Flutter Tips',
                  style: TextStyle(fontSize: 26, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'build your career with tharwat samy',
                    style: TextStyle(
                        fontSize: 18, color: Colors.black.withOpacity(0.5)),
                  ),
                ),
                trailing: IconButton(
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                    icon: FaIcon(FontAwesomeIcons.trash),
                    color: Colors.black,
                    onPressed: () {
                      print("Pressed");
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                "May21 , 2022",
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
