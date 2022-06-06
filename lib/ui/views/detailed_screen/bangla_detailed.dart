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

class BanglaDetailed extends StatelessWidget {
  const BanglaDetailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          AppString.sub_name_bangla,
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
                cardTitle: AppString.bangla_sorborno,
                title_color: AppColor.deep_orange,
                ExpandedChildren: [
                  SubCardForExpansionTile(
                    bgColor: AppColor.supr_deep_blue,
                    subCardTilte: AppString.bangla_sorborno_grid,
                    titleColor: Colors.white,
                    onTap: ()=>Get.toNamed(sorborno_grid_screen),
                  ),
                  SubCardForExpansionTile(
                      onTap: () => Get.toNamed(sorborno_draw_play_screen),
                      bgColor: AppColor.deep_orange,
                      subCardTilte: AppString.bangla_sorborno_porichoi,
                      titleColor: Colors.white),
                ]),
            SizedBox(
              height: 5,
            ),
            DetailedCardWithExpansion(
                bgColor: AppColor.lite_violet,
                cardTitle: AppString.bangla_banjonborno,
                title_color: AppColor.deep_violet,
                ExpandedChildren: [
                  SubCardForExpansionTile(
                    bgColor: AppColor.deep_green,
                    subCardTilte: AppString.bangla_banjonborno_grid,
                    titleColor: Colors.white,
                    onTap: ()=>Get.toNamed(bborno_grid_screen)
                  ),
                  SubCardForExpansionTile(
                    bgColor: AppColor.supr_deep_blue,
                    subCardTilte: AppString.bangla_banjonborno_porichoi,
                    titleColor: Colors.white,
                    onTap: ()=>Get.toNamed(bborno_draw_play_screen),
                  )
                ]),
            SizedBox(
              height: 5,
            ),
            DetailedCardWithExpansion(
                bgColor: AppColor.lite_blue,
                cardTitle: AppString.bangla_Sorborno_banjonborno_porikkha,
                title_color: AppColor.supr_deep_blue,
                ExpandedChildren: [
                  SubCardForExpansionTile(
                      bgColor: AppColor.supr_deep_blue,
                      subCardTilte: "স্বরবর্ণ পরীক্ষা",
                      titleColor: Colors.white,
                      onTap: ()=>Get.toNamed(bangla_sorborno_test_screen)
                  ),
                  SubCardForExpansionTile(
                    bgColor: AppColor.deep_green,
                    subCardTilte: "ব্যঞ্জনবর্ণ পরীক্ষা",
                    titleColor: Colors.white,
                    onTap: ()=>Get.toNamed(bangla_banjon_test_screen),
                  )
                ]),
            SizedBox(
              height: 5,
            ),
            DetailedCard(
                cardTitle: AppString.bangla_hritu,
                bgColor: AppColor.lite_orange,
                titleColor: AppColor.deep_orange,
                onTap: () => null)
          ],
        ),
      ),
    );
  }
}
