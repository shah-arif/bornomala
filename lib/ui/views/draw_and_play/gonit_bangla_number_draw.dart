import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:bornomala/bloc/audioplay.dart';
import 'package:bornomala/const/app_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class GonitBanglaNumberDraw extends StatefulWidget {
  GonitBanglaNumberDraw({Key? key}) : super(key: key);

  @override
  State<GonitBanglaNumberDraw> createState() => _GonitBanglaNumberDrawState();
}

class _GonitBanglaNumberDrawState extends State<GonitBanglaNumberDraw> {
  final GlobalKey<SfSignaturePadState> signatureGlobalKey = GlobalKey();

  void _handleClearButtonPressed() {
    signatureGlobalKey.currentState!.clear();
  }

  //AudioPlayer
  AudioPlayer audioPlayer = AudioPlayer();
  PlayerState audioPlayerState = PlayerState.PAUSED;
  late AudioCache audioCache;
  var srcAudio ="";
  playerMusic()async{
    await audioCache.play(srcAudio);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioCache = AudioCache(fixedPlayer: audioPlayer);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioPlayer.release();
    audioPlayer.dispose();
    audioCache.clearAll();
  }
  @override
  Widget build(BuildContext context) {
    RxString display = AppList.bangla_number.first.obs;
    var color_list = AppList.colorList;
    Random random = Random();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "বাংলা সংখ্যা",
          style: TextStyle(
              fontFamily: 'kalpurush', fontSize: 30, color: Color(0xffff0000)),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("Draw"),
          Stack(
            children: [
              Obx(() {
                return Center(
                    child: Text(
                      display.value,
                      style: TextStyle(
                          fontFamily: 'kalpurush',
                          fontSize: 250,
                          color: Color(0x3D5E7B88)),
                    ));
              }),
              Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                            height: 420,
                            child: SfSignaturePad(
                              key: signatureGlobalKey,
                              backgroundColor: null,
                              strokeColor: Colors.red,
                              minimumStrokeWidth: 18.0,
                              maximumStrokeWidth: 18.0,
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)))),
                    SizedBox(height: 10),
                    IconButton(
                        onPressed: _handleClearButtonPressed,
                        icon: Icon(Icons.delete,color: Colors.red,size: 32,))
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: AppList.bangla_number.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Container(
                      height: 100,
                      width: 100,
                      child: Card(
                        elevation: 8,
                        child: InkWell(
                          onTap: (){
                            display.value = AppList.bangla_number[index];
                            _handleClearButtonPressed();
                            srcAudio = AppList.audio_link_bangla_number[index];
                            audioPlayerState == playerMusic();
                            print(index);
                          },
                          child: Center(
                              child: Text(
                                AppList.bangla_number[index],
                                style: TextStyle(
                                    fontFamily: 'kalpurush',
                                    fontSize: 50,
                                    color: color_list[
                                    random.nextInt(color_list.length)]),
                              )),
                        ),
                      )),
                )),
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}

