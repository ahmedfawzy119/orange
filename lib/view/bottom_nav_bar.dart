import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/MainHome.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/news/home_news.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/settings/home_settings.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;

  final tabs = [HomeScreen(), MainNews(), MainSetting()];

  SetCurrentIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: tabs,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          // decoration: BoxDecoration(color: Colors.red),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  SetCurrentIndex(0);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: currentIndex == 0
                        ? Color.fromARGB(255, 243, 243, 243)
                        : Colors.white,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.home_outlined,
                        color: currentIndex == 0
                            ? Colors.deepOrange
                            : Colors.black,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      currentIndex == 0
                          ? Text(
                              'Home',
                              style: TextStyle(
                                color: currentIndex == 0
                                    ? Colors.deepOrange
                                    : Colors.black,
                                fontSize: 15,
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  SetCurrentIndex(1);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: currentIndex == 1
                        ? Color.fromARGB(255, 243, 243, 243)
                        : Colors.white,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.newspaper,
                        color: currentIndex == 1
                            ? Colors.deepOrange
                            : Colors.black,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      currentIndex == 1
                          ? Text(
                              'News',
                              style: TextStyle(
                                color: currentIndex == 1
                                    ? Colors.deepOrange
                                    : Colors.black,
                                fontSize: 15,
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  SetCurrentIndex(2);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: currentIndex == 2
                        ? Color.fromARGB(255, 243, 243, 243)
                        : Colors.white,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings_outlined,
                        color: currentIndex == 2
                            ? Colors.deepOrange
                            : Colors.black,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      currentIndex == 2
                          ? Text(
                              'Settings',
                              style: TextStyle(
                                color: currentIndex == 2
                                    ? Colors.deepOrange
                                    : Colors.black,
                                fontSize: 15,
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
