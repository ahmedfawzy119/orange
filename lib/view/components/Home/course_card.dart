import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key? key,
    required this.Name,
    required this.Day,
    required this.StartTime,
    required this.EndTime,
    required this.CourseType,
  }) : super(key: key);

  final String Name;
  final String Day;
  final String StartTime;
  final String EndTime;
  final String CourseType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(left: 20, right: 20, top: 22),
      height: 120,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 10,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.alarm),
                      Text(
                        '2hrs',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        CourseType,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Icon(Icons.calendar_month),
                          Text(
                            Day,
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Start Time',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.green,
                          ),
                          Text(
                            StartTime,
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'End Time',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.red,
                          ),
                          Text(
                            EndTime,
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
