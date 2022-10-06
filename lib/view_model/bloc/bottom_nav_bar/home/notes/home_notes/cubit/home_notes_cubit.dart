import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_notes_state.dart';

class HomeNotesCubit extends Cubit<HomeNotesState> {
  HomeNotesCubit() : super(HomeNotesInitial());

  static HomeNotesCubit get(context) => BlocProvider.of(context);
}
