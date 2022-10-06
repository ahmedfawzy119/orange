import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'main_home_state.dart';

class MainHomeCubit extends Cubit<MainHomeState> {
  MainHomeCubit() : super(MainHomeInitial());

  static MainHomeCubit get(context) => BlocProvider.of(context);
}
