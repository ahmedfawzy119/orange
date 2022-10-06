import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/view/components/setting/home_setting/setting_row.dart';
import 'package:orange_workshop/view/components/setting/our_partner/our_partner_card.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/settings/FAQ.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/settings/our_partners.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/settings/support.dart';
import 'package:orange_workshop/view/pages/bottom_nav_bar/settings/terms&conditions.dart';

import '../../../../view_model/bloc/bottom_nav_bar/home/mainhome/cubit/main_home_cubit.dart';

class MainSetting extends StatelessWidget {
  const MainSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainHomeCubit(),
      child: BlocConsumer<MainHomeCubit, MainHomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                'Settings',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              centerTitle: true,
            ),
            body: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Column(
                    children: [
                      SettingRow(
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FAQScreen()),
                          );
                        },
                        name: 'FAQ',
                      ),
                      Divider(thickness: 1),
                      SettingRow(
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TermsConditions()),
                          );
                        },
                        name: 'Terms & Conditions',
                      ),
                      Divider(thickness: 1),
                      SettingRow(
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OurPartners()),
                          );
                        },
                        name: 'Our parteners',
                      ),
                      Divider(thickness: 1),
                      SettingRow(
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SupportScreen()),
                          );
                        },
                        name: 'Support',
                      ),
                      Divider(thickness: 1),
                      SettingRow(
                        press: () {},
                        name: 'Log out',
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
