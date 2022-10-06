import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/view/components/news/home_news/copy_share.dart';
import 'package:orange_workshop/view/components/news/home_news/news_card.dart';
import 'package:orange_workshop/view/components/orange_title.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/news/news_screen.dart';

import '../../../../view_model/bloc/bottom_nav_bar/news/home_news/cubit/home_news_cubit.dart';

class MainNews extends StatelessWidget {
  const MainNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeNewsCubit(),
      child: BlocConsumer<HomeNewsCubit, HomeNewsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return MaterialApp(
            home: Scaffold(
              body: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 50, bottom: 20),
                        child: Text(
                          'News',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500),
                        ),
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
                                builder: (context) => NewsScreen())),
                        child: NewsCard(),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
