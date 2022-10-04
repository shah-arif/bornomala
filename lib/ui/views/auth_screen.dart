import 'package:bornomala/const/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lottie/lottie.dart';

import '../route/route.dart';

class AuthScreen extends StatefulWidget {
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController _nameController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC074FF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.lite_orange,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome Buddy!",
                    style: TextStyle(
                        fontSize: 38,
                        color: Colors.deepOrange,
                        fontFamily: 'kalpurush'),
                  ),
                  Text(
                    "Never stop learning . . .",
                    style: TextStyle(fontSize: 19, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AspectRatio(
                      aspectRatio: 1.8,
                      child: Lottie.asset("assets/files/learningg.json"))
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      TextFormField(
                        controller: _nameController,
                        keyboardType: TextInputType.name,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Empty name cannot be assigned";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "What's your name?",
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding:
                              EdgeInsets.only(left: 10, top: 5, bottom: 5),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.transparent)
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.transparent)
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            box.write("name", _nameController.text);
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: FutureBuilder(
                                                future: Future.delayed(
                                                    Duration(seconds: 1),
                                                    () => rootBundle.loadString(
                                                        "assets/files/privacy_policy.md")),
                                                builder: (BuildContext context,
                                                    AsyncSnapshot<String>
                                                        snapshot) {
                                                  if (snapshot.hasData) {
                                                    return Markdown(
                                                        data: snapshot.data
                                                            .toString());
                                                  }
                                                  return Center(
                                                      child:
                                                          CircularProgressIndicator());
                                                }),
                                          ),
                                          FlatButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10))),
                                              padding: EdgeInsets.all(0),
                                              onPressed: () {
                                                box.write("agree", true);
                                                Get.offAndToNamed(main_home_page);
                                              },
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            bottomLeft: Radius
                                                                .circular(10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10)),
                                                  ),
                                                  padding: EdgeInsets.all(0),
                                                  width: double.infinity,
                                                  child: Center(
                                                      child: Text("Agree"))))
                                        ],
                                      ));
                                });
                            // Get.offAndToNamed(main_home_page);
                          }
                        },
                        child: Text(
                          "OK",
                          style: TextStyle(color: AppColor.deep_orange),
                        ),
                        color: AppColor.lite_orange,
                        minWidth: double.infinity,
                        elevation: 0.0,
                        height: 42,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
