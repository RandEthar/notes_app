part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}

final class NoteCubitLoading extends  NoteState {}
final class NoteCubitFalier extends  NoteState {
final String errMassage;

  NoteCubitFalier({required this.errMassage});


}
final class NoteCubitSuccess extends  NoteState {
final List<NoteModel>notes;

  NoteCubitSuccess({required this.notes});







}