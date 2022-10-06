import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'notes_screen_state.dart';

class NotesScreenCubit extends Cubit<NotesScreenState> {
  NotesScreenCubit() : super(NotesScreenInitial());

  static NotesScreenCubit get(context) => BlocProvider.of(context);
}
