import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/view/components/login&register/normal_button.dart';
import 'package:orange_workshop/view/components/login&register/normal_field.dart';
import 'package:orange_workshop/view/components/login&register/or_divider.dart';
import 'package:orange_workshop/view/components/login&register/outline_button.dart';
import 'package:orange_workshop/view/components/login&register/password_field.dart';
import 'package:orange_workshop/view/components/orange_title.dart';
import 'package:orange_workshop/view/pages/register.dart';

import '../../view_model/bloc/login/cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LoginCubit myCubit = LoginCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              body: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 60),
                            child:
                                OrangeTitle(size: 30, weight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            NormalField(
                              EnterValue: 'please enter your email',
                              TextType: TextInputType.text,
                              controller: myCubit.email,
                              LabelText: 'E-Mail',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            PassWordField(
                              EnterValue: 'please enter your password',
                              isObsecure: myCubit.isObsecure2,
                              press: () {
                                myCubit.ViewChange2();
                              },
                              Controller: myCubit.password,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.deepOrange,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            SizedBox(
                              height: 55,
                            ),
                            NormalButton(
                              press: () {
                                if (formKey.currentState!.validate()) {
                                  myCubit.login(context);
                                }
                              },
                              text: 'Login',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            OrDivider(),
                            SizedBox(
                              height: 20,
                            ),
                            OutLineButton(
                              text: 'Sign Up',
                              press: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegisterScreen()));
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
