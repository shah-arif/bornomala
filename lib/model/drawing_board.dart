// import 'dart:ui' as ui;
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';
//
//
//
// class DrawingBoardScreen extends StatefulWidget {
//   DrawingBoardScreen({Key? key}) : super(key: key);
//
//   @override
//   DrawingBoardScreenState createState() => DrawingBoardScreenState();
// }
//
// class DrawingBoardScreenState extends State<DrawingBoardScreen> {
//   final GlobalKey<SfSignaturePadState> signatureGlobalKey = GlobalKey();
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   void _handleClearButtonPressed() {
//     signatureGlobalKey.currentState!.clear();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         children: [
//           Padding(
//               padding: EdgeInsets.all(10),
//               child: Container(
//                   child: SfSignaturePad(
//                       key: signatureGlobalKey,
//                       backgroundColor: Colors.transparent,
//                       strokeColor: Colors.red,
//                       minimumStrokeWidth: 4.0,
//                       maximumStrokeWidth: 8.0),
//                   decoration:
//                   BoxDecoration(border: Border.all(color: Colors.grey)))),
//           SizedBox(height: 10),
//           IconButton(onPressed: _handleClearButtonPressed, icon: Icon(Icons.delete))
//         ],
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center);
//   }
// }