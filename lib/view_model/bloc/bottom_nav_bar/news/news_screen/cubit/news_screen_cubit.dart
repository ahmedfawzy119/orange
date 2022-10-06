import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'news_screen_state.dart';

class NewsScreenCubit extends Cubit<NewsScreenState> {
  NewsScreenCubit() : super(NewsScreenInitial());

  static NewsScreenCubit get(context) => BlocProvider.of(context);
}
