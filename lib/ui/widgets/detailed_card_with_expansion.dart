import 'package:flutter/material.dart';

class DetailedCardWithExpansion extends StatelessWidget {
  final Color bgColor;
  final String cardTitle;
  final Color title_color;
  final List<Widget> ExpandedChildren;
  const DetailedCardWithExpansion({
    required this.bgColor,required this.cardTitle,required this.title_color,required this.ExpandedChildren
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
        child: Theme(
          data: ThemeData(
              dividerColor: Colors.transparent
          ),
          child: ExpansionTile(
            initiallyExpanded: true,
            title: Text(cardTitle,style: TextStyle(fontFamily: 'kalpurush',fontSize: 25,color: title_color),),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: ExpandedChildren
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}