import 'package:bornomala/const/app_color.dart';
import 'package:bornomala/const/app_string.dart';
import 'package:bornomala/ui/route/route.dart';
import 'package:bornomala/ui/views/draw_and_play/bangla_banjon_borno_draw.dart';
import 'package:bornomala/ui/views/grid_view/bangla_banjonborno_grid.dart';
import 'package:bornomala/ui/views/grid_view/bangla_sorborno_grid.dart';
import 'package:bornomala/ui/widgets/detailed_card.dart';
import 'package:bornomala/ui/widgets/detailed_card_with_expansion.dart';
import 'package:bornomala/ui/widgets/sub_card_for_expansion_tile.dart';
import 'package:bornomala/ui/widgets/tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../draw_and_play/bangla_sorborno_draw.dart';

class GonitDetailed extends StatelessWidget {
  const GonitDetailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          AppString.sub_name_gonit,
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
                cardTitle: "বাংলা সংখ্যা",
                title_color: AppColor.deep_orange,
                ExpandedChildren: [
                  SubCardForExpansionTile(
                    bgColor: AppColor.supr_deep_blue,
                    subCardTilte: "মুখে মুখে বলি",
                    titleColor: Colors.white,
                    onTap: ()=>Get.toNamed(gonit_bangla_number_grid_screen),
                  ),
                  SubCardForExpansionTile(
                      onTap: () => Get.toNamed(gonit_bangla_number_draw_screen),
                      bgColor: AppColor.deep_orange,
                      subCardTilte: "দেখি ও লিখি",
                      titleColor: Colors.white),
                ]),
            SizedBox(
              height: 5,
            ),
            DetailedCardWithExpansion(
                bgColor: AppColor.lite_violet,
                cardTitle: "ইংরেজি সংখ্যা",
                title_color: AppColor.deep_violet,
                ExpandedChildren: [
                  SubCardForExpansionTile(
                      bgColor: AppColor.deep_green,
                      subCardTilte: "মুখে মুখে বলি",
                      titleColor: Colors.white,
                      onTap: ()=>Get.toNamed(gonit_english_number_grid_screen)
                  ),
                  SubCardForExpansionTile(
                    bgColor: AppColor.supr_deep_blue,
                    subCardTilte: "দেখি ও লিখি",
                    titleColor: Colors.white,
                    onTap: ()=>Get.toNamed(gonit_english_number_draw_screen),
                  )
                ]),
            SizedBox(
              height: 5,
            ),
            DetailedCardWithExpansion(
                bgColor: AppColor.lite_blue,
                cardTitle: "সংখ্যা পরীক্ষা",
                title_color: AppColor.supr_deep_blue,
                ExpandedChildren: [
                  SubCardForExpansionTile(
                      bgColor: AppColor.supr_deep_blue,
                      subCardTilte: "বাংলা সংখ্যা যাচাই",
                      titleColor: Colors.white,
                      onTap: ()=>Get.toNamed(gonit_bangla_test_screen,arguments: "বাংলা সংখ্যা যাচাই")
                  ),
                  SubCardForExpansionTile(
                    bgColor: AppColor.deep_green,
                    subCardTilte: "ইংরেজি সংখ্যা যাচাই",
                    titleColor: Colors.white,
                    onTap: ()=>Get.toNamed(gonit_english_test_screen,arguments: "ইংরেজি সংখ্যা যাচাই"),
                  )
                ]),
            SizedBox(
              height: 5,
            ),
            DetailedCard(
                cardTitle: "গুণের নামাতা",
                bgColor: AppColor.lite_green,
                titleColor: AppColor.deep_green,
                onTap: () => null),
            SizedBox(
              height: 5,
            ),
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
