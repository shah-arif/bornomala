import 'package:bornomala/const/app_color.dart';
import 'package:bornomala/const/app_string.dart';
import 'package:bornomala/ui/route/route.dart';
import 'package:bornomala/ui/widgets/detailed_card.dart';
import 'package:bornomala/ui/widgets/detailed_card_with_expansion.dart';
import 'package:bornomala/ui/widgets/sub_card_for_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ArobiDetailed extends StatelessWidget {
  const ArobiDetailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          AppString.sub_name_arobi,
          style: TextStyle(
              fontFamily: 'kalpurush',
              fontSize: 30,
              color: AppColor.deep_orange),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(height: 20,),
            DetailedCardWithExpansion(
                bgColor: AppColor.lite_orange,
                cardTitle: "আরবি বর্ণ",
                title_color: AppColor.deep_orange,
                ExpandedChildren: [
                  SubCardForExpansionTile(
                    bgColor: AppColor.supr_deep_blue,
                    subCardTilte: "মুখে মুখে বলি",
                    titleColor: Colors.white,
                    onTap: ()=>Get.toNamed(arobi_alphabet_grid_screen),
                  ),
                  SubCardForExpansionTile(
                      onTap: () => Get.toNamed(arobi_alphabet_draw_screen),
                      bgColor: AppColor.deep_orange,
                      subCardTilte: "দেখি ও লিখি",
                      titleColor: Colors.white),
                ]),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 5,
            ),
            DetailedCard(
              cardTitle: "আরবি বর্ণ পরীক্ষা",
              bgColor: AppColor.lite_blue,
              onTap: () => Get.toNamed(arobi_test_screen,arguments: "আরবি বর্ণ পরীক্ষা"),
              titleColor: AppColor.supr_deep_blue,
            ),
            SizedBox(
              height: 5,
            ),
            // DetailedCard(
            //     cardTitle: "গুণের নামাতা",
            //     bgColor: AppColor.lite_green,
            //     titleColor: AppColor.deep_green,
            //     onTap: () => null),
            // SizedBox(
            //   height: 5,
            // ),
            // DetailedCard(
            //     cardTitle: "AppString.bangla_hritu",
            //     bgColor: AppColor.lite_orange,
            //     titleColor: AppColor.deep_orange,
            //     onTap: () => null)
          ],
        ),
      ),
    );
  }
}
