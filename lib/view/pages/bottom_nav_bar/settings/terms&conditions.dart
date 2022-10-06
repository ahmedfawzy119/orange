import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/view/components/setting/back_icon.dart';
import 'package:orange_workshop/view_model/bloc/bottom_nav_bar/settings/Terms&conditions/cubit/terms_conditions_cubit.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TermsConditionsCubit(),
      child: BlocConsumer<TermsConditionsCubit, TermsConditionsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: BackIcon(),
              title: Text(
                'Terms & Conditions',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
            ),
          );
        },
      ),
    );
  }
}
