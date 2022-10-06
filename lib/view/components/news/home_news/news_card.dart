import 'package:flutter/material.dart';
import 'package:orange_workshop/view/components/news/home_news/copy_share.dart';
import 'package:orange_workshop/view/components/orange_title.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[300],
        ),
        width: 320,
        height: 250,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ODCs',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepOrange,
                    ),
                    width: 100,
                    height: 50,
                    child: CopyShare(),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 90,
                ),
                OrangeTitle(size: 30, weight: FontWeight.bold)
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 55),
              child: Row(
                children: [
                  Text(
                    'ODC Support All Universties',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
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
