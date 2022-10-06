import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/view/bottom_nav_bar.dart';
import 'package:orange_workshop/view/components/Home/home_card.dart';
import 'package:orange_workshop/view/components/orange_title.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/calendar.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/finals.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/lectures.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/midterms.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/notes/home_notes.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/sections.dart';

import '../../../../view_model/bloc/bottom_nav_bar/home/mainhome/cubit/main_home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainHomeCubit(),
      child: BlocConsumer<MainHomeCubit, MainHomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return MaterialApp(
            home: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 40, bottom: 30),
                          child: OrangeTitle(size: 20, weight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LectureScreen())),
                          child: HomeCards(
                            icon: Icons.menu_book_outlined,
                            name: 'Lectures',
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SectionsScreen())),
                          child: HomeCards(
                            icon: Icons.people_alt,
                            name: 'Sections',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MidTermScreen())),
                          child: HomeCards(
                            icon: Icons.assessment_outlined,
                            name: 'Midterms',
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FinalsScreen())),
                          child: HomeCards(
                            icon: Icons.article,
                            name: 'Finals',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CalendarScreen())),
                          child: HomeCards(
                            icon: Icons.calendar_month,
                            name: 'Events',
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeNotesScreen())),
                          child: HomeCards(
                            icon: Icons.notes,
                            name: 'Notes',
                          ),
                        )
                      ],
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
