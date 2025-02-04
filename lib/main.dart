import 'package:flutter/material.dart';
import 'package:notes_app/views/note_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      theme: ThemeData(

        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.white
      ),
      home: const NoteView(),
    );
  }
}

