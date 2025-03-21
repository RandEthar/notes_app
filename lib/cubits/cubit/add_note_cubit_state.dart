part of 'add_note_cubit_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

final class AddNoteCubitInitial extends AddNoteCubitState {}
final class AddNoteCubitLoading extends AddNoteCubitState {}
final class AddNoteCubitFalier extends AddNoteCubitState {}
final class AddNoteCubitSuccessl extends AddNoteCubitState {}