import 'package:flutter/material.dart';

class DetailedCard extends StatelessWidget {
  final String cardTitle;
  final Color bgColor;
  final Color? titleColor;
  final VoidCallback onTap;
  const DetailedCard({
    required this.cardTitle,required this.bgColor,required this.onTap, this.titleColor
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: bgColor,
        ),
        child: InkWell(
          onTap: onTap,
          child: ListTile(
            title: Text(
              cardTitle,
              style: TextStyle(
                  fontFamily: 'kalpurush',
                  fontSize: 25,
                  color: titleColor),
            ),
          ),
        ),
      ),
    );
  }
}
