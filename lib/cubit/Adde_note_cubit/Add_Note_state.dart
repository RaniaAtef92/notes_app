part of 'Add_Note_cubit.dart';

@immutable
abstract class AddnoteState {}

class AddnoteInitial extends AddnoteState {}

class AddnoteLodind extends AddnoteState {}

class AddnoteSuccess extends AddnoteState {}

class AddnoteFailuer extends AddnoteState {
  final String errmessage;

  AddnoteFailuer(this.errmessage);
}
