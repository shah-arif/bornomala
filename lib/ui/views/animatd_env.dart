import 'package:bornomala/block/greeting.dart';
import 'package:bornomala/const/app_color.dart';
import 'package:bornomala/const/app_string.dart';
import 'package:bornomala/ui/route/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lottie/lottie.dart';

import '../widgets/tile.dart';

class AnimatedEnv extends StatelessWidget {
  RxInt _currentIndex = 0.obs;
  RxBool drawer = false.obs;
  final box = GetStorage();


  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AnimatedPositioned(
        top: drawer.value == false ? 0 : 100,
        bottom: drawer.value == false ? 0 : 100,
        left: drawer.value == false ? 0 : 150,
        right: drawer.value == false ? 0 : -150,
        duration: Duration(milliseconds: 200),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: drawer.value == false ? BorderRadius.zero : BorderRadius.circular(20)
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: drawer.value == false ? IconButton(
                  onPressed: () {
                    drawer.value = true;
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  )) : IconButton(
                  onPressed: () {
                    drawer.value = false;
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                  )),
              actions: [
                SizedBox(width: 10,),
                IconButton(onPressed: ()=>showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Center(child: Icon(Icons.notifications,size: 40,)),
                    backgroundColor: AppColor.lite_green,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    content: Container(
                      height: 250,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("No Notifications yet",style: TextStyle(fontFamily: "kalpurush",fontSize: 20),),
                          Lottie.asset("assets/files/dog-sleeping.json")
                        ],
                      ),
                    ),
                  );
                }), icon: Icon(Icons.notifications,color: Colors.grey,))


              ],
            ),
            body: Column(
              children: [
                Text(
                  "Hi, "+ box.read("name"),
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "kalpurush"
                  ),
                ),
                Text("Good " + Greeting().greeting()),
                SizedBox(height: 20,),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10,right: 10),
                    child: GridView.count(
                    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),crossAxisCount: 2,crossAxisSpacing: 5,mainAxisSpacing: 5,children: [
                      Tile(
                          subject: AppString.sub_name_bangla,
                          subColor: AppColor.deep_blue,
                          bgColor: AppColor.lite_blue,
                          imgLocation: "assets/images/bangla.png",
                          navigate: () => Get.toNamed(bangla_detailed_screen)),
                      Tile(
                          subject: AppString.sub_name_english,
                          subColor: AppColor.deep_orange,
                          bgColor: AppColor.lite_orange,
                          imgLocation: "assets/images/english.png",
                          navigate: () => Get.toNamed(english_detailed_screen)),
                      Tile(
                          subject: AppString.sub_name_gonit,
                          subColor: AppColor.deep_green,
                          bgColor: AppColor.lite_green,
                          imgLocation: "assets/images/gonit.png",
                          navigate: () => Get.toNamed(gonit_detailed_screen)),
                      Tile(
                          subject: AppString.sub_name_arobi,
                          subColor: AppColor.deep_blue,
                          bgColor: AppColor.lite_blue,
                          imgLocation: "assets/images/arobi_sub.png",
                          navigate: () => Get.toNamed(arobi_detailed_screen)),
                    ],)
                  ),
                )
              ],
            )),
          ),
        );
    });
  }
}