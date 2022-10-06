import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_news_state.dart';

class HomeNewsCubit extends Cubit<HomeNewsState> {
  HomeNewsCubit() : super(HomeNewsInitial());

  static HomeNewsCubit get(context) => BlocProvider.of(context);
}
