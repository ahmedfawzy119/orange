import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/view/components/Home/home_appbar.dart';
import 'package:orange_workshop/view/components/Home/course_card.dart';
import 'package:orange_workshop/view_model/bloc/bottom_nav_bar/home/finals/cubit/finals_cubit.dart';

class FinalsScreen extends StatelessWidget {
  const FinalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FinalsCubit()..GetData(),
      child: BlocConsumer<FinalsCubit, FinalsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          FinalsCubit myCubit = FinalsCubit.get(context);
          return Scaffold(
            appBar: HomeAppBar('Finals'),
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
                          CourseCard(
                            Name: 'React',
                            CourseType: 'Exam Date',
                            Day: '2022-08-20',
                            StartTime: '12:00pm',
                            EndTime: '2:00pm',
                          ),
                          CourseCard(
                            Name: 'Vue',
                            CourseType: 'Exam Date',
                            Day: '2022-08-20',
                            StartTime: '2:00pm',
                            EndTime: '4:00pm',
                          ),
                          CourseCard(
                            Name: 'Flutter',
                            CourseType: 'Exam Date',
                            Day: '2022-06-05',
                            StartTime: '12:00pm',
                            EndTime: '2:00pm',
                          ),
                          CourseCard(
                            Name: 'React',
                            CourseType: 'Exam Date',
                            Day: '2022-06-07',
                            StartTime: '12:00pm',
                            EndTime: '2:00pm',
                          ),
                          CourseCard(
                            Name: 'Vue',
                            CourseType: 'Exam Date',
                            Day: '2022-06-07',
                            StartTime: '2:00pm',
                            EndTime: '4:00pm',
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
