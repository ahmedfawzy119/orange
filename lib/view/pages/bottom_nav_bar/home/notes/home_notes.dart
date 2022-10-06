import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/view/components/setting/back_icon.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/notes/notes_screen.dart';

import '../../../../../view_model/bloc/bottom_nav_bar/home/notes/home_notes/cubit/home_notes_cubit.dart';

class HomeNotesScreen extends StatelessWidget {
  const HomeNotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeNotesCubit(),
      child: BlocConsumer<HomeNotesCubit, HomeNotesState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: BackIcon(),
              title: Text(
                'Notes',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              centerTitle: true,
            ),
            body: Center(
              child: Text(
                'Theres No Data To Show',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 212, 211, 211),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotesScreen()),
                );
              },
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          );
        },
      ),
    );
  }
}
