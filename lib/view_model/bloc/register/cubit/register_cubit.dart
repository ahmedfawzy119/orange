import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange_workshop/token.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/MainHome.dart';
import 'package:orange_workshop/view/pages/login.dart';
import 'package:orange_workshop/view_model/network/dio_helper.dart';
import 'package:orange_workshop/view_model/network/end_points.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController gender = TextEditingController();
  bool isObsecure = true;
  bool isObsecure1 = true;

  void signup(context) {
    var json = {
      'email': email.text.toString(),
      'password': password.text.toString(),
      'name': name.text.toString(),
      'phoneNumber': phoneNumber.text.toString(),
      'gender': gender.text.toString(),
    };

    DioHelper.postData(url: registerEndPoint, data: json).then((value) {
      if (value.statusCode == 200) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      }
    });
  }

  ViewChange() {
    if (isObsecure == true) {
      isObsecure = false;
    } else {
      isObsecure = true;
    }
    emit(changer());
  }

  ViewChange1() {
    if (isObsecure1 == true) {
      isObsecure1 = false;
    } else {
      isObsecure1 = true;
    }
    emit(changer());
  }
}
