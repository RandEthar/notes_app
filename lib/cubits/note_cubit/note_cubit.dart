import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constent.dart';
import 'package:notes_app/models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  featchAllNotes(){
 emit(NoteCubitLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

   
      emit(NoteCubitSuccess(notes: notesBox.values.toList()));
    } catch (e) {
      emit(NoteCubitFalier(errMassage: e.toString()));
    }












  }
}
