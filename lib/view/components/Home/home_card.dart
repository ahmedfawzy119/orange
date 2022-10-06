import 'package:flutter/material.dart';

class HomeCards extends StatelessWidget {
  const HomeCards({
    Key? key,
    required this.name,
    required this.icon,
  }) : super(key: key);

  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 130,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 228, 228, 228),
                ),
                child: Icon(
                  icon,
                  size: 40,
                  color: Colors.deepOrange,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
