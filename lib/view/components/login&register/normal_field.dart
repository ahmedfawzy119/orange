import 'package:flutter/material.dart';

class NormalField extends StatelessWidget {
  const NormalField({
    Key? key,
    required this.LabelText,
    this.controller,
    required this.TextType,
    required this.EnterValue,
  }) : super(key: key);

  final controller;
  final String LabelText;
  final TextInputType TextType;
  final String EnterValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return EnterValue;
        } else {
          return null;
        }
      },
      keyboardType: TextType,
      controller: controller,
      cursorColor: Colors.deepOrange,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.deepOrange,
            )),
        labelStyle: TextStyle(color: Colors.deepOrange),
        labelText: LabelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
