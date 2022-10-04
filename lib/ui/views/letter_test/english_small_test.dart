import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:bornomala/const/app_list.dart';
import 'package:bornomala/const/app_map.dart';
import 'package:bornomala/ui/style/appbar_style.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lottie/lottie.dart';

class EnglishSmallTest extends StatefulWidget {
  const EnglishSmallTest({Key? key}) : super(key: key);

  @override
  State<EnglishSmallTest> createState() => _EnglishSmallTestState();
}

class _EnglishSmallTestState extends State<EnglishSmallTest> {
  //AudioPlayer
  AudioPlayer audioPlayer = AudioPlayer();
  PlayerState audioPlayerState = PlayerState.PAUSED;
  late AudioCache audioCache;
  var srcAudio = "";
  playerMusic() async {
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
    Map map = AppMap().english_smalL_map;
    List list = map.entries.toList();
    var shuffleList = list..shuffle();
    var letter = shuffleList.map((e) => e.key).toList();
    var link = shuffleList.map((e) => e.value).toList();
    // print(letter);
    // print(link);
    Random random = Random();
    var rng;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          Get.arguments,
          style: AppBarStyle().appBarStyle,
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: Icon(
                Icons.refresh,
                color: Colors.black,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: 12,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 2, crossAxisSpacing: 2, crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Container(
                child: Card(
                    child: InkWell(
                        onTap: () {
                          // print(index);
                          // print(rng);
                          // srcAudio = link[index];
                          // audioPlayerState == playerMusic();
                          if (index == rng) {
                            Fluttertoast.showToast(msg: "Correct!");
                            srcAudio = "audio/sfx/success.mp3";
                            audioPlayerState == playerMusic();
                            Future.delayed(Duration(seconds: 2),(){
                              rng = random.nextInt(10);
                              // print(rng);
                              srcAudio = link[rng];
                              audioPlayerState == playerMusic();
                            });
                          } else if (rng == null) {
                            Fluttertoast.showToast(
                                msg: "Press Test Button before");
                            srcAudio = "audio/sfx/pressbutton.mp3";
                            audioPlayerState == playerMusic();
                          } else {
                            Fluttertoast.showToast(msg: "Wrong");
                            srcAudio = "audio/sfx/error.mp3";
                            audioPlayerState == playerMusic();
                            Future.delayed(Duration(seconds: 2), () {
                              srcAudio = link[rng];
                              audioPlayerState == playerMusic();srcAudio = link[rng];
                              audioPlayerState == playerMusic();
                            });
                          }
                        },
                        child: Center(
                            child: Text(
                          letter[index],
                          style:
                              TextStyle(fontSize: 50, fontFamily: "kalpurush",color: AppList.colorList[random.nextInt(10)]),
                        )))),
              );
            }),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 28,
              child: IconButton(
                  onPressed: () {
                    if(rng == null ){
                      Fluttertoast.showToast(
                          msg: "Press Test Button before");
                      srcAudio = "audio/sfx/pressbutton.mp3";
                      audioPlayerState == playerMusic();
                    } else {
                      srcAudio = link[rng];
                      audioPlayerState == playerMusic();
                    }
                  },
                  icon: Icon(Icons.repeat,color: Colors.white,))),
          SizedBox(
            width: 8,
          ),
          CircleAvatar(
              backgroundColor: Colors.red,
              radius: 28,
              child: IconButton(
                  onPressed: () {
                    rng = random.nextInt(10);
                    // print(rng);
                    srcAudio = link[rng];
                    audioPlayerState == playerMusic();
                  },
                  icon: Text("Test",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),))),
        ],
      )
    );
  }
}
