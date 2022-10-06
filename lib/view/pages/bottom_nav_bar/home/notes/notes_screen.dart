import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/view/components/setting/back_icon.dart';

import '../../../../../view_model/bloc/bottom_nav_bar/home/notes/notes_screen/cubit/notes_screen_cubit.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesScreenCubit(),
      child: BlocConsumer<NotesScreenCubit, NotesScreenState>(
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
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              borderSide: BorderSide(
                                color: Colors.deepOrange,
                              ),
                            ),
                            hintText: 'title',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'date',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              borderSide: BorderSide(
                                color: Colors.deepOrange,
                              ),
                            ),
                            hintText: '2022-10-02 10:21:31.7476',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              borderSide: BorderSide(
                                color: Colors.deepOrange,
                              ),
                            ),
                            hintText: 'Note',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          width: 100,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey,
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.add),
                                Text(
                                  'Add',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
