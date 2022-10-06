import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/view/components/setting/FAQ/FaqBar.dart';
import 'package:orange_workshop/view/components/setting/back_icon.dart';

import '../../../../view_model/bloc/bottom_nav_bar/settings/FAQ/cubit/faq_cubit.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FaqCubit(),
      child: BlocConsumer<FaqCubit, FaqState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          FaqCubit myCubit = FaqCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: BackIcon(),
              title: Text(
                'FAQ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
              centerTitle: true,
            ),
            body: InkWell(
              onTap: () {
                myCubit.changer();
              },
              child: FaqBar(
                myRadius: myCubit.Myradius,
                height: myCubit.height,
              ),
            ),
          );
        },
      ),
    );
  }
}
