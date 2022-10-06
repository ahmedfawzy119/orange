import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange_workshop/model/midterm.dart';
import 'package:orange_workshop/token.dart';
import 'package:orange_workshop/view_model/network/dio_helper.dart';
import 'package:orange_workshop/view_model/network/end_points.dart';

part 'mid_terms_state.dart';

class MidTermsCubit extends Cubit<MidTermsState> {
  MidTermsCubit() : super(MidTermsInitial());

  static MidTermsCubit get(context) => BlocProvider.of(context);

  ExamModel? ModelData;

  void GetData() {
    DioHelper.getData(url: examsEndPoint, token: Token).then((value) {
      if (value.statusCode == 200) {
        ModelData = ExamModel.fromJson(value.data);
        emit(MidTermsSuccess());
      }
    });
  }
}
