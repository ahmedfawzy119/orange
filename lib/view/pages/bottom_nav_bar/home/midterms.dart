import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/view/components/Home/home_appbar.dart';
import 'package:orange_workshop/view/components/Home/course_card.dart';
import 'package:orange_workshop/view_model/bloc/bottom_nav_bar/home/midterms/cubit/mid_terms_cubit.dart';

class MidTermScreen extends StatelessWidget {
  const MidTermScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MidTermsCubit()..GetData(),
      child: BlocConsumer<MidTermsCubit, MidTermsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          MidTermsCubit myCubit = MidTermsCubit.get(context);
          return Scaffold(
            appBar: HomeAppBar('Midterms'),
            body: myCubit.ModelData == null
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: myCubit.ModelData!.data!.length,
                    itemBuilder: (context, Index) => SingleChildScrollView(
                      child: Column(
                        children: [
                          CourseCard(
                            Name: myCubit.ModelData!.data![Index].examSubject
                                .toString(),
                            CourseType: 'Exam Date',
                            Day: myCubit.ModelData!.data![Index].examDate
                                .toString(),
                            StartTime: myCubit
                                .ModelData!.data![Index].examStartTime
                                .toString(),
                            EndTime: myCubit.ModelData!.data![Index].examEndTime
                                .toString(),
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
