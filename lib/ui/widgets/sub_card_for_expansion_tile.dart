import 'package:flutter/material.dart';

class SubCardForExpansionTile extends StatelessWidget {
  final VoidCallback? onTap;
  final Color bgColor;
  final String subCardTilte;
  final Color? titleColor;
  const SubCardForExpansionTile({
    this.onTap,required this.bgColor,required this.subCardTilte,this.titleColor
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: bgColor,
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(subCardTilte,style: TextStyle(fontFamily: 'kalpurush',fontSize: 20,color: titleColor),),
        ),
      ),
    );
  }
}