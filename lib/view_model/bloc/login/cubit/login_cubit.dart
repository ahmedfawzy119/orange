import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange_workshop/view/bottom_nav_bar.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/MainHome.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/settings/home_settings.dart';
import 'package:orange_workshop/view_model/network/dio_helper.dart';
import 'package:orange_workshop/view_model/network/end_points.dart';

import '../../../../token.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String message = 'Login Screen';

  bool isObsecure2 = true;

  void login(context) {
    var json = {
      'email': email.text.toString(),
      'password': password.text.toString(),
    };

    print(email.text.toString());
    print(password.text.toString());

    DioHelper.postData(url: loginEndPoint, data: json).then((value) {
      if (value.statusCode == 200) {
        Token = value.data['data']['accessToken'];
        if (Token != '' && Token != null && Token.isNotEmpty) {
          message = 'success';
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => BottomBar()),
          );
        }
      }
    });
  }

  ViewChange2() {
    if (isObsecure2 == true) {
      isObsecure2 = false;
    } else {
      isObsecure2 = true;
    }
    emit(changer2());
  }
}
