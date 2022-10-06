import 'package:flutter/material.dart';
import 'package:orange_workshop/model/uni_model.dart';
import 'package:orange_workshop/view/bottom_nav_bar.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/MainHome.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/calendar.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/finals.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/lectures.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/midterms.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/notes/home_notes.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/notes/notes_screen.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/home/sections.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/news/news_screen.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/settings/home_settings.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/settings/our_partners.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/settings/support.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/settings/terms&conditions.dart';
import 'package:orange_workshop/view/pages/login.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/news/home_news.dart';
import 'package:orange_workshop/view/pages/register.dart';
import 'package:orange_workshop/view_model/network/dio_helper.dart';
import 'package:orange_workshop/view_model/network/end_points.dart';
import 'view/pages/bottom_nav_bar/settings/FAQ.dart';

void main() async {
  await DioHelper.init();
  runApp(MaterialApp(home: LoginScreen()));
}
