import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                  Stack(children: [
                    ClipRRect(child: Image.asset("assets/images/profile.png",fit: BoxFit.fill,height: 100,width: 100,),
                      borderRadius:  BorderRadius.circular(50),
                    ),
                    Positioned(child: Icon(Icons.edit,color: Colors.white,size: 50,),right: 20,top: 20,),


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
                      Get.to(HomeScreen());
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
