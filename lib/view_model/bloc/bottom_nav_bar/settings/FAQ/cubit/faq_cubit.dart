import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'faq_state.dart';

class FaqCubit extends Cubit<FaqState> {
  FaqCubit() : super(FaqInitial());

  static FaqCubit get(context) => BlocProvider.of(context);

  double height = 70;
  Radius Myradius = Radius.circular(0);

  changer() {
    if (height == 70 && Myradius == Radius.circular(0)) {
      height = 150;
      Myradius = Radius.circular(15);
    } else {
      height = 70;
      Myradius = Radius.circular(0);
    }

    emit(Changer());
  }
}
