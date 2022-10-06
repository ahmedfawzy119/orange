import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/view/components/Home/home_appbar.dart';

import 'package:orange_workshop/view/components/Home/course_card.dart';
import 'package:orange_workshop/view_model/bloc/bottom_nav_bar/home/sections/cubit/sections_cubit.dart';

class SectionsScreen extends StatelessWidget {
  const SectionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SectionsCubit()..GetData(),
      child: BlocConsumer<SectionsCubit, SectionsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SectionsCubit myCubit = SectionsCubit.get(context);
          return Scaffold(
            appBar: HomeAppBar('Sections'),
            body: myCubit.ModelData == null
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: myCubit.ModelData!.data!.length,
                    itemBuilder: (context, Index) => SingleChildScrollView(
                      child: Column(
                        children: [
                          CourseCard(
                            Name: myCubit.ModelData!.data![Index].sectionSubject
                                .toString(),
                            CourseType: 'section Day',
                            Day: myCubit.ModelData!.data![Index].sectionDate
                                .toString(),
                            StartTime: myCubit
                                .ModelData!.data![Index].sectionStartTime
                                .toString(),
                            EndTime: myCubit
                                .ModelData!.data![Index].sectionEndTime
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
