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

class EnglishDetailed extends StatelessWidget {
  const EnglishDetailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          AppString.sub_name_english,
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
                cardTitle: "Capital Letter",
                title_color: AppColor.deep_orange,
                ExpandedChildren: [
                  SubCardForExpansionTile(
                    bgColor: AppColor.supr_deep_blue,
                    subCardTilte: "Look & Say",
                    titleColor: Colors.white,
                    onTap: ()=>Get.toNamed(capital_letter_grid_screen),
                  ),
                  SubCardForExpansionTile(
                      onTap: () => Get.toNamed(capital_letter_draw_screen),
                      bgColor: AppColor.deep_orange,
                      subCardTilte: "Look & Write",
                      titleColor: Colors.white),
                ]),
            SizedBox(
              height: 5,
            ),
            DetailedCardWithExpansion(
                bgColor: AppColor.lite_violet,
                cardTitle: "Small Letter",
                title_color: AppColor.deep_violet,
                ExpandedChildren: [
                  SubCardForExpansionTile(
                      bgColor: AppColor.deep_green,
                      subCardTilte: "Look & Say",
                      titleColor: Colors.white,
                      onTap: ()=>Get.toNamed(small_letter_grid_screen)
                  ),
                  SubCardForExpansionTile(
                    bgColor: AppColor.supr_deep_blue,
                    subCardTilte: "Look & Write",
                    titleColor: Colors.white,
                    onTap: ()=>Get.toNamed(small_letter_draw_screen),
                  )
                ]),
            SizedBox(
              height: 5,
            ),
            DetailedCardWithExpansion(
                bgColor: AppColor.lite_blue,
                cardTitle: "Alphabet Test",
                title_color: AppColor.supr_deep_blue,
                ExpandedChildren: [
                  SubCardForExpansionTile(
                      bgColor: AppColor.supr_deep_blue,
                      subCardTilte: "Capital Letter Test",
                      titleColor: Colors.white,
                      onTap: ()=>Get.toNamed(english_capital_test_screen,arguments: "Capital Letter Test")
                  ),
                  SubCardForExpansionTile(
                    bgColor: AppColor.deep_green,
                    subCardTilte: "Small Letter Test",
                    titleColor: Colors.white,
                    onTap: ()=>Get.toNamed(english_small_test_screen,arguments: "Small Letter Test"),
                  )
                ]),
            SizedBox(
              height: 5,
            ),
            DetailedCard(
                cardTitle: "Month",
                bgColor: AppColor.lite_green,
                titleColor: AppColor.deep_green,
                onTap: () => null),
            SizedBox(
              height: 5,
            ),
            DetailedCard(
                cardTitle: "Seasons",
                bgColor: AppColor.lite_orange,
                titleColor: AppColor.deep_orange,
                onTap: () => null)
          ],
        ),
      ),
    );
  }
}
