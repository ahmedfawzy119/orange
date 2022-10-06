import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'calender_state.dart';

class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit() : super(CalenderInitial());

  static CalendarCubit get(context) => BlocProvider.of(context);
}
