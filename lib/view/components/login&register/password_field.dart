import 'package:flutter/material.dart';

class PassWordField extends StatelessWidget {
  PassWordField({
    Key? key,
    this.Controller,
    required this.press,
    required this.isObsecure,
    required this.EnterValue,
  }) : super(key: key);

  final Controller;
  final VoidCallback press;
  final bool isObsecure;
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
      controller: Controller,
      obscureText: isObsecure,
      cursorColor: Colors.deepOrange,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(
            Icons.visibility_off,
            color: Colors.deepOrange,
          ),
          onPressed: press,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.deepOrange,
          ),
        ),
        labelStyle: TextStyle(color: Colors.deepOrange),
        labelText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
