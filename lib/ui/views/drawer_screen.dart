import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFEAE9E9),
            Color(0xFF939393),
          ],
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(left: 20.w, top: 50.h, bottom: 20.h),
          child: Column(
            children: [
              Text(
                "BornoMala",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
              ),
              Text(
                "Shah Arif",
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 200.h,
              ),
              OutlinedButton(onPressed: (){}, child: const Text("Rate Us",style: TextStyle(color: Colors.black),)),
              SizedBox(height: 250,),
              Expanded(
                child: CircleAvatar(
                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.help,)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
