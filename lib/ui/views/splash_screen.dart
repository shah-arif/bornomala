import 'package:bornomala/ui/route/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final box = GetStorage();
  Future chooseScreen()async{
    var nameExist = box.read("name");
    if(nameExist == null) {
      Get.offAndToNamed(auth_screen);
    }
    else {
      Get.offAndToNamed(main_home_page);
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () => chooseScreen());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              child: FlutterLogo(size: 50,)),
          ],
        ),
      ),
    );
  }
}
