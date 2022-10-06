import 'package:flutter/material.dart';
import 'package:orange_workshop/view/components/setting/back_icon.dart';

AppBar HomeAppBar(String name) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: BackIcon(),
    title: Text(
      name,
      style: TextStyle(color: Colors.black),
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 20),
        child: Icon(
          Icons.filter_alt,
          size: 30,
          color: Colors.deepOrange,
        ),
      ),
    ],
    centerTitle: true,
  );
}
