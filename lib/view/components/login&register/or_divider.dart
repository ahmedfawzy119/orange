import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 2,
          ),
        ),
        Text(
          "OR",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
