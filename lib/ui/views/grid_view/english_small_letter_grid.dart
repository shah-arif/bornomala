import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:bornomala/const/app_list.dart';
import 'package:bornomala/const/app_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnglishSmallLetterGrid extends StatefulWidget {
  const EnglishSmallLetterGrid({Key? key}) : super(key: key);

  @override
  State<EnglishSmallLetterGrid> createState() => _EnglishSmallLetterGridState();
}

class _EnglishSmallLetterGridState extends State<EnglishSmallLetterGrid> {
  var srcAudio = "";

  AudioPlayer audioPlayer = AudioPlayer();
  PlayerState audioPlayerState = PlayerState.PAUSED;
  late AudioCache audioCache;

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

  playerMusic() async {
    await audioCache.play(srcAudio);
  }

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          title: Text(
            "small letter",
            style: TextStyle(
                fontFamily: 'kalpurush',
                fontSize: 30,
                color: Color(0xffff0000)),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                  child: GridView.builder(
                      itemCount: AppList.small_letter.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) => Container(
                          height: 100,
                          width: 100,
                          child: Card(
                            elevation: 5,
                            child: InkWell(
                              onTap: () {
                                srcAudio = AppList.audio_link_alphabet[index];
                                audioPlayerState == playerMusic();
                              },
                              child: Center(
                                  child: Text(
                                    AppList.small_letter[index],
                                    style: TextStyle(
                                        fontFamily: 'kalpurush',
                                        fontSize: 50,
                                        color: AppList.colorList[random
                                            .nextInt(AppList.colorList.length)]),
                                  )),
                            ),
                          )))),
            ],
          ),
        ));
  }
}
