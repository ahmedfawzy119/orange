import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange_workshop/model/sections.dart';
import 'package:orange_workshop/token.dart';
import 'package:orange_workshop/view_model/network/dio_helper.dart';
import 'package:orange_workshop/view_model/network/end_points.dart';

part 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());

  static SectionsCubit get(context) => BlocProvider.of(context);

  SectionModel? ModelData;

  void GetData() {
    DioHelper.getData(url: sectionEndPoint, token: Token).then((value) {
      if (value.statusCode == 200) {
        ModelData = SectionModel.fromJson(value.data);
        emit(SecionDataSuccess());
      }
    });
  }
}
