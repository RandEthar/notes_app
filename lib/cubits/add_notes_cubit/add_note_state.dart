part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteCubitInitial extends AddNoteState {}
final class AddNoteCubitLoading extends AddNoteState {}
final class AddNoteCubitFalier extends AddNoteState {
final String errorMassage;

  AddNoteCubitFalier({required this.errorMassage});


}
final class AddNoteCubitSuccess extends AddNoteState {}