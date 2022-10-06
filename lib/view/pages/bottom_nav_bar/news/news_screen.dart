import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/view/components/orange_title.dart';

import '../../../../view_model/bloc/bottom_nav_bar/news/news_screen/cubit/news_screen_cubit.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsScreenCubit(),
      child: BlocConsumer<NewsScreenCubit, NewsScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 0.1,
                          offset: Offset(0, 0))
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
            ),
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [OrangeTitle(size: 30, weight: FontWeight.bold)],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 17,
                    vertical: 50,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'ODCs',
                                style: TextStyle(
                                  wordSpacing: 50,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 15),
                                child: Text(
                                  '2022-07-06',
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ODC Support All Universties',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
