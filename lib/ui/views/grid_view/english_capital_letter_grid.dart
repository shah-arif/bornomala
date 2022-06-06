import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:bornomala/const/app_list.dart';
import 'package:bornomala/const/app_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnglishCapitalLetterGrid extends StatefulWidget {
  const EnglishCapitalLetterGrid({Key? key}) : super(key: key);

  @override
  State<EnglishCapitalLetterGrid> createState() => _EnglishCapitalLetterGridState();
}

class _EnglishCapitalLetterGridState extends State<EnglishCapitalLetterGrid> {
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
            "CAPITAL LETTER",
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
                      itemCount: AppList.capital_letter.length,
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
                                    AppList.capital_letter[index],
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
