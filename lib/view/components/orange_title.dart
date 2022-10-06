import 'package:flutter/material.dart';

class OrangeTitle extends StatelessWidget {
  const OrangeTitle({
    Key? key,
    required this.size,
    required this.weight,
  }) : super(key: key);

  final double size;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: <TextSpan>[
        TextSpan(
          text: 'Orange ',
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: size,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextSpan(
          text: 'Digital Center',
          style: TextStyle(
            color: Colors.black,
            fontSize: size,
            fontWeight: weight,
          ),
        ),
      ]),
    );
  }
}
