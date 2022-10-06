import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_setting_state.dart';

class HomeSettingCubit extends Cubit<HomeSettingState> {
  HomeSettingCubit() : super(HomeSettingInitial());

  static HomeSettingCubit get(context) => BlocProvider.of(context);
}
