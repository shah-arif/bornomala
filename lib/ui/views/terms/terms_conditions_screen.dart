import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class TermsCoditionsScreen extends StatelessWidget {
  const TermsCoditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Center(
            child: FutureBuilder(
              future: Future.delayed(Duration(seconds: 1),()=>rootBundle.loadString("assets/files/terms_conditions.md")),
              builder: (BuildContext context, AsyncSnapshot<String> snapshot){
                if(snapshot.hasData){
                  return Markdown(data: snapshot.data.toString());
                }
                return Center(child: CircularProgressIndicator(),);
              },
            ),
          ),
        ),
      ),
    );
  }
}