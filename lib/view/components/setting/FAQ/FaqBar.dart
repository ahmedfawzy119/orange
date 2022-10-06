import 'package:flutter/material.dart';

class FaqBar extends StatelessWidget {
  const FaqBar({
    Key? key,
    required this.height,
    required this.myRadius,
  }) : super(key: key);

  final double height;
  final Radius myRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 4.0, bottom: 5),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: ExpansionTile(
        initiallyExpanded: false,
        title: Text(
          'Q1: How many countries orange digital center is in ?',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                // color: Colors.grey,
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )),
            height: 50,
            child: Padding(
              padding: EdgeInsets.only(top: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '16 Country',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



      // duration: Duration(seconds: 1),
      // margin: EdgeInsets.symmetric(horizontal: 10),
      // width: double.infinity,
      // height: height,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(20),
      //     topRight: Radius.circular(20),
      //     bottomLeft: myRadius,
      //     bottomRight: myRadius,
      //   ),
      //   color: Colors.deepOrange,
      // ),
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Padding(
      //           padding: EdgeInsets.only(top: 8.0),
      //           child: Container(
      //             width: 290,
      //             child: Text(
      //               'Q1 :How many countries Orange Digital center is in ?',
      //               style: TextStyle(
      //                 fontSize: 20, 
      //                 color: Colors.white,
      //               ),
      //             ),
      //           ),
      //         ),
      //         Icon(Icons.arrow_drop_down_outlined),
      //       ],
      //     ),
      //   ],
      // ),
