import 'package:flutter/material.dart';

class SettingRow extends StatelessWidget {
  const SettingRow({
    Key? key,
    required this.name,
    required this.press,
  }) : super(key: key);

  final String name;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        // decoration:
        // BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
        width: double.infinity,
        height: 57,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey[500],
            ),
          ],
        ),
      ),
    );
  }
}
