import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../../model/lecture.dart';
import '../../../../../../token.dart';
import '../../../../../network/dio_helper.dart';
import '../../../../../network/end_points.dart';

part 'lecture_state.dart';

class LectureCubit extends Cubit<LectureState> {
  LectureCubit() : super(LectureInitial());

  static LectureCubit get(context) => BlocProvider.of(context);

  lectureModel? ModelData;

  void GetData() {
    DioHelper.getData(url: lectureEndPoint, token: Token).then((value) {
      if (value.statusCode == 200) {
        ModelData = lectureModel.fromJson(value.data);
        emit(HomeDataSuccess());
      }
    });
  }
}
