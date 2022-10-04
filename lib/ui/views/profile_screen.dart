
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}



class _ProfileScreenState extends State<ProfileScreen> {
//   File? _image;
//   Future getImage()async{
//     final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//     if(image == null) return;
//     final imageTemporary = File(image.path);
//     setState(() {
//       this._image = imageTemporary;
//     },);
//   }
  final box = GetStorage();
// @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     box.read("image");
//   }

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    var formkey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    ClipOval(
                        child: Image.network("https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60",scale: 6,)),
                    Positioned(
                      left: 120,
                        child: CircleAvatar(
                          child: IconButton(onPressed: (){
                            // getImage();
                          }, icon: const Icon(Icons.edit)),
                        ))
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(box.read("name"),style: const TextStyle(fontSize: 25),),
                    const SizedBox(width: 20,),
                    IconButton(onPressed: (){
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          content: Container(
                            height: MediaQuery.of(context).size.height*0.25,
                            child: Form(
                              key: formkey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: "Change your name"
                                    ),
                                    validator: (val){
                                      if(val!.isEmpty){
                                        return "Empty name cannot be assigned";
                                      }
                                      else if(val.length > 20){
                                        return "Name must less then 20 characters";
                                      }
                                      else{
                                        return null;
                                      }
                                    },
                                    controller: nameController,
                                  ),
                                  ElevatedButton(onPressed: (){
                                    if(formkey.currentState!.validate()){
                                      box.write("name", nameController.text);
                                      Navigator.pop(context);
                                      setState(() {

                                      },);
                                    }
                                  }, child: const Text("Done"))
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                    }, icon: const Icon(Icons.edit))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
