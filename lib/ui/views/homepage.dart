// import 'package:bornomala/block/greeting.dart';
// import 'package:bornomala/const/app_color.dart';
// import 'package:bornomala/const/app_string.dart';
// import 'package:bornomala/ui/route/route.dart';
// import 'package:bornomala/model/drawing_board.dart';
// import 'package:bornomala/ui/widgets/tile.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               IconButton(
//                 onPressed: () => Scaffold.of(context).openDrawer(),
//                 icon: Icon(
//                   Icons.menu,
//                   size: 30.sp,
//                   color: Color(0xffc1bfbf),
//                 ),
//               ),
//               Row(
//                 children: [
//                   Icon(
//                     Icons.search,
//                     size: 30.sp,
//                     color: Color(0xffc1bfbf),
//                   ),
//                   SizedBox(
//                     width: 10.w,
//                   ),
//                   Icon(
//                     Icons.notifications,
//                     size: 30.sp,
//                     color: Color(0xffc1bfbf),
//                   ),
//                 ],
//               )
//             ],
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding: EdgeInsets.only(left: 10,right: 10),
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 10.h,
//                     ),
//                     Column(
//                       children: [
//                         Text(
//                           AppString.home_screen_title,
//                           style: TextStyle(
//                             fontSize: 30.sp,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text("Good " + Greeting().greeting())
//                       ],
//                     ),
//                     SizedBox(
//                       height: 50.h,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Tile(
//                             subject: AppString.sub_name_bangla,
//                             subColor: AppColor.deep_blue,
//                             bgColor: AppColor.lite_blue,
//                             imgLocation: "assets/images/bangla.png",
//                             navigate: () => Get.toNamed(bangla_detailed_screen)),
//                         SizedBox(
//                           width: 5.w,
//                         ),
//                         Tile(
//                             subject: AppString.sub_name_english,
//                             subColor: AppColor.deep_orange,
//                             bgColor: AppColor.lite_orange,
//                             imgLocation: "assets/images/english.png",
//                             navigate: () => Get.toNamed(english_detailed_screen)),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 12.h,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Tile(
//                             subject: AppString.sub_name_gonit,
//                             subColor: AppColor.deep_green,
//                             bgColor: AppColor.lite_green,
//                             imgLocation: "assets/images/gonit.png",
//                             navigate: () => Get.toNamed(gonit_detailed_screen)),
//                         SizedBox(
//                           width: 5.w,
//                         ),
//                         Tile(
//                             subject: AppString.sub_name_arobi,
//                             subColor: AppColor.deep_blue,
//                             bgColor: AppColor.lite_blue,
//                             imgLocation: "assets/images/bangla.png",
//                             navigate: () => Get.toNamed(arobi_detailed_screen)),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 12.h,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SizedBox(
//                           width: 5.w,
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 12.h,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SizedBox(
//                           width: 5.w,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     ));
//   }
// }
