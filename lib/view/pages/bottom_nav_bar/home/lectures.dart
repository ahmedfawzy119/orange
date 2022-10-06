import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/view/components/Home/home_appbar.dart';
import 'package:orange_workshop/view/components/Home/course_card.dart';
import 'package:orange_workshop/view_model/bloc/bottom_nav_bar/home/lecture/cubit/lecture_cubit.dart';

class LectureScreen extends StatelessWidget {
  const LectureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LectureCubit()..GetData(),
      child: BlocConsumer<LectureCubit, LectureState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LectureCubit myCubit = LectureCubit.get(context);
          return Scaffold(
            appBar: HomeAppBar('Lectures'),
            body: myCubit.ModelData == null
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: myCubit.ModelData!.data!.length,
                    itemBuilder: (context, Index) => SingleChildScrollView(
                      child: Column(
                        children: [
                          CourseCard(
                            Name: myCubit.ModelData!.data![Index].lectureSubject
                                .toString(),
                            CourseType: 'Lecture Day',
                            Day: myCubit.ModelData!.data![Index].lectureDate
                                .toString(),
                            StartTime: myCubit
                                .ModelData!.data![Index].lectureStartTime
                                .toString(),
                            EndTime: myCubit
                                .ModelData!.data![Index].lectureStartTime
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
