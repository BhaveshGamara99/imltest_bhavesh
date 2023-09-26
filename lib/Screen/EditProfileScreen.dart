import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:imltest_bhavesh/Screen/HomeScreen.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _skillsController = TextEditingController();
  final TextEditingController _workEXPdController = TextEditingController();
  late File imageFile = File("assets/images/profile.png");

  _getFromGallery() async {
    try {
      XFile? pickedFile = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        maxWidth: 1800,
        maxHeight: 1800,
      );
      if (pickedFile != null) {
        setState(() {
          imageFile = File(pickedFile.path);
        });
      }
    } catch (e) {
      // Handle the exception, e.g., show an error message.
      print('Error loading image: $e');
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
automaticallyImplyLeading: true,
      ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),

                  SizedBox(height: 10,),
                  Stack( children: [
                    ClipRRect(child: imageFile == null ?  Image.asset("assets/images/profile.png",fit: BoxFit.fill,height: 100,width: 100,) :Image.file(imageFile,fit: BoxFit.fill,height: 100,width: 100),
                      borderRadius:  BorderRadius.circular(50),
                    ),
                    Positioned(child: InkWell(
                      onTap: (){
                          _getFromGallery();
                      },
                        child: Icon(Icons.edit,color: Colors.white,size: 50,)),right: 20,top: 20,),


                  ],),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16),),
                        borderSide: BorderSide(width: 5),
                      ),
                      hintText: 'Name',

                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16),),
                        borderSide: BorderSide(width: 5),
                      ),
                      hintText: 'Email',

                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: _skillsController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16),),
                        borderSide: BorderSide(width: 5),
                      ),
                      hintText: 'Skills',

                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: _workEXPdController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16),),
                        borderSide: BorderSide(width: 5),
                      ),
                      hintText: 'Experience',

                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(onPressed: (){

                      Get.to(HomeScreen(name: _nameController.text.toString(),email: _emailController.text.toString(), exp: _workEXPdController.text.toString(),skills: _skillsController.text.toString(),));
                    }, child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 34),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple.withOpacity(0.8),
                        elevation: 0,
                      ),

                    ),
                  ),




                ],
              ),
            ),
          ),
        ),
    );

  }

}
