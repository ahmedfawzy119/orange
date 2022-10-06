import 'package:flutter/material.dart';

class CopyShare extends StatelessWidget {
  const CopyShare({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5),
          child: Icon(
            Icons.share_outlined,
            size: 20,
            color: Colors.white,
          ),
        ),
        VerticalDivider(
          thickness: 1,
          indent: 11,
          endIndent: 11,
          color: Colors.white,
        ),
        Padding(
          padding: EdgeInsets.only(right: 5),
          child: Icon(
            Icons.copy,
            size: 20,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
