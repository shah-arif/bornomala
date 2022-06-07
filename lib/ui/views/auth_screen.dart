import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: "Enter your name"
                ),
                validator: (val){
                  if(val!.isEmpty){
                    return "Empty name cannot be assigned";
                  } else {
                    return null;
                  }
                },
              ),
              ElevatedButton(onPressed: (){
                if(formKey.currentState!.validate()){
                  box.write("name", _nameController.text);
                  Get.offAndToNamed(main_home_page);
                }
              }, child: Text("OK"))
            ],
          ),
        ),
      ),
    );
  }
}
