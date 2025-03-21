import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constent.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/note_view.dart';

void main() async{
  await Hive.initFlutter();
  //! بدي افتح box يلي بدي اخزن في الداتا
    await Hive.openBox(kNotesBox);
    Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      theme: ThemeData(
      fontFamily: 'Poppins',
        brightness: Brightness.dark,

      ),
      home: const NoteView(),
    );
  }
}

