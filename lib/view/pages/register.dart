import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/view/components/login&register/normal_button.dart';
import 'package:orange_workshop/view/components/login&register/normal_field.dart';
import 'package:orange_workshop/view/components/login&register/or_divider.dart';
import 'package:orange_workshop/view/components/login&register/outline_button.dart';
import 'package:orange_workshop/view/components/login&register/password_field.dart';
import 'package:orange_workshop/view/components/orange_title.dart';
import 'package:orange_workshop/view/pages/login.dart';

import '../../view_model/bloc/register/cubit/register_cubit.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: RegisterBody());
  }
}

class RegisterBody extends StatefulWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

final formKey = GlobalKey<FormState>();

final List<String> GenderItems = ['Male', 'Female', 'Other'];
final List<String> UniItems = ['Auc', 'Cairo', 'ELU', 'GUC'];
final List<String> GradeItems = [
  'Grade 1',
  'Grade 2',
  'Grade 3',
  'Grade 4',
  'Grade 5',
];

String? SelectedValue;

class _RegisterBodyState extends State<RegisterBody> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          RegisterCubit myCubit = RegisterCubit.get(context);
          return Scaffold(
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
                          child: OrangeTitle(size: 30, weight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          NormalField(
                            EnterValue: 'please enter your name',
                            TextType: TextInputType.text,
                            LabelText: 'Name',
                            controller: myCubit.name,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          NormalField(
                            EnterValue: 'please enter your email',
                            TextType: TextInputType.text,
                            LabelText: 'E-mail',
                            controller: myCubit.email,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          PassWordField(
                            EnterValue: 'please enter your password',
                            isObsecure: myCubit.isObsecure1,
                            press: () {
                              myCubit.ViewChange();
                            },
                            Controller: myCubit.password,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          PassWordField(
                            EnterValue: 'please enter your password',
                            isObsecure: myCubit.isObsecure,
                            press: () {
                              myCubit.ViewChange();
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          NormalField(
                            EnterValue: 'please enter your Phone number',
                            TextType: TextInputType.number,
                            LabelText: 'Phone Number',
                            controller: myCubit.phoneNumber,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          NormalField(
                            EnterValue: 'please enter your gender (m/f)',
                            TextType: TextInputType.name,
                            LabelText: 'gender',
                            controller: myCubit.gender,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Gender',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  Container(
                                    width: 90,
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton2(
                                        hint: Text('Male'),
                                        isExpanded: true,
                                        value: SelectedValue,
                                        items: GenderItems.map(
                                          (item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(item),
                                          ),
                                        ).toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            SelectedValue = value as String;
                                          });
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'University',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  Container(
                                    width: 90,
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton2(
                                        hint: Text('AUC'),
                                        isExpanded: true,
                                        value: SelectedValue,
                                        items: GenderItems.map(
                                          (item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(item),
                                          ),
                                        ).toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            SelectedValue = value as String;
                                          });
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'grade',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  Container(
                                    width: 90,
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton2(
                                        hint: Text('Grade 1'),
                                        isExpanded: true,
                                        value: SelectedValue,
                                        items: GenderItems.map(
                                          (item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(item),
                                          ),
                                        ).toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            SelectedValue = value as String;
                                          });
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          NormalButton(
                              text: 'Sign Up',
                              press: () {
                                if (formKey.currentState!.validate()) {
                                  myCubit.signup(context);
                                }
                                // myCubit.signup(context);
                              }),
                          SizedBox(
                            height: 20,
                          ),
                          OrDivider(),
                          SizedBox(
                            height: 20,
                          ),
                          OutLineButton(
                            text: 'Login',
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
