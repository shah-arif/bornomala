import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

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
            Color(0xFFEAE9E9),
            Color(0xFF939393),
          ],
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(left: 20, top: 50, bottom: 20),
          child: Column(
            children: [
              Text(
                "BornoMala",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                box.read("name"),
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300,fontFamily: "kalpurush"),
              ),
              SizedBox(
                height: 200,
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
