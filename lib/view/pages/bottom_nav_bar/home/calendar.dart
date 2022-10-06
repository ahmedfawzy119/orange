import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/view/components/Home/home_appbar.dart';
import 'package:orange_workshop/view/components/setting/back_icon.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:orange_workshop/view_model/bloc/bottom_nav_bar/home/calender/cubit/calender_cubit.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalendarCubit(),
      child: BlocConsumer<CalendarCubit, CalendarState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: BackIcon(),
              title: Text(
                'Midterms',
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
            ),
            body: SafeArea(
                child: TableCalendar(
              focusedDay: DateTime.utc(2022, 10, 4),
              firstDay: DateTime.utc(2020, 10, 4),
              lastDay: DateTime.utc(2023, 10, 4),
              shouldFillViewport: true,
              headerStyle: HeaderStyle(
                leftChevronVisible: false,
                rightChevronVisible: false,
                formatButtonVisible: false,
              ),
              calendarStyle: CalendarStyle(
                selectedDecoration: BoxDecoration(
                  color: Colors.deepOrange,
                ),
                todayDecoration: BoxDecoration(
                  color: Colors.deepOrange,
                  shape: BoxShape.circle,
                ),
              ),
            )),
          );
        },
      ),
    );
  }
}
