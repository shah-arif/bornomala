import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final VoidCallback? navigate;
  final Color bgColor;
  final String imgLocation;
  final String subject;
  final Color subColor;
  const Tile({
    required this.subject,
    required this.subColor,
    required this.bgColor,
    required this.imgLocation,
    this.navigate,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: navigate,
      child: Container(
        height: 200,
        width: 180,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Image.asset(
              imgLocation,
              height: 140,
            ),
             SizedBox(
              height: 5,
            ),
            Text(
              subject,
              style: TextStyle(
                  fontFamily: 'kalpurush', fontSize: 20, color: subColor),
            )
          ],
        ),
      ),
    );
  }
}
