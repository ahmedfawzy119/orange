import 'package:flutter/material.dart';

class OutLineButton extends StatelessWidget {
  const OutLineButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: Colors.deepOrange,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
