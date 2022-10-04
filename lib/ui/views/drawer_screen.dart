import 'package:bornomala/ui/route/route.dart';
import 'package:bornomala/ui/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lottie/lottie.dart';

import '../../const/app_color.dart';

class DrawerScreen extends StatelessWidget {
  DrawerScreen({Key? key}) : super(key: key);
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xFF9796F0),
          Color(0xFFFBC7D4),
        ],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
            padding: EdgeInsets.only(left: 4, top: 40, bottom: 20),
            child: Row(
              children: [
                Container(
                  // color: Colors.red,
                  width: MediaQuery.of(context).size.width * .36,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "BornoMala",
                              style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            // Text(
                            //   box.read("name"),
                            //   style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.w400,fontFamily: "kalpurush"),
                            // ),
                            InkWell(
                              onTap: ()=>Get.to(ProfileScreen()),
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.white,
                                  child: Image.asset("assets/images/arobi_sub.png"),
                                ))
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white),onPressed: (){}, child: const Text("Rate Us",style: TextStyle(color: Colors.black),)),
                            ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white),onPressed: ()=>Get.toNamed(privacy_policy_screen), child: const Text("Privacy & Policy",style: TextStyle(color: Colors.black),)),
                            ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white),onPressed: ()=>Get.toNamed(terms_condition_screen), child: const Text("Terms & Conditions",style: TextStyle(color: Colors.black,),)),
                            ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white),onPressed: (){
                              showDialog(context: context, builder: (context){
                                return AlertDialog(
                                  title: Center(child: Icon(Icons.notifications,size: 40,)),
                                  backgroundColor: AppColor.lite_green,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                  content: Container(
                                    height: 250,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                      ],
                                    ),
                                  ),
                                );
                              });
                            }, child: const Text("About App",style: TextStyle(color: Colors.black,),)),
                          ],
                        ),
                        SizedBox()
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
