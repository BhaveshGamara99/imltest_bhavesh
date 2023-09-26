import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imltest_bhavesh/Screen/EditProfileScreen.dart';
import 'package:imltest_bhavesh/Screen/LoginScreen.dart';

import '../Controllers/auth_controller.dart';

class HomeScreen extends StatefulWidget {

   String name,email,exp,skills;


  HomeScreen({required this.name, required this.email, required this.exp,required this.skills});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> skills = ["Swift,Dart,C++"];
  List<String> words = [];

  void _convertWordsToWidgets() {
    setState(() {
      words = widget.skills.split(',');

    });
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _convertWordsToWidgets();
  }
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width * 1;
    double height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(height: 50,width: 80,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.yellow,
                          Colors.purple,
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ))),
              SizedBox(width: width *  0.4,),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(height: 50,width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(onTap: (){


                  Widget cancelButton = TextButton(
                    child: Text("Cancel"),
                    onPressed:  () {
                      Get.back();
                    },
                  );
                  Widget continueButton = TextButton(
                    child: Text("Logout"),
                    onPressed:  () {
                      AuthController.authInstance.signOut();
                      Get.to(LoginScreen());
                    },
                  );

                  // set up the AlertDialog
                  AlertDialog alert = AlertDialog(
                    title: Text("AlertDialog"),
                    content: Text("Are you sure you want to :ogout"),
                    actions: [
                      cancelButton,
                      continueButton,
                    ],
                  );

                  // show the dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    },
                  );




                },
                child: Icon(Icons.logout)),
              ),
            ],
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello, Good Evening",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                  SizedBox(height: 20,),
                  Center(
                    child: ClipRRect(child: Image.asset("assets/images/profile.png",fit: BoxFit.fill,height: 100,width: 100,),
                    borderRadius:  BorderRadius.circular(50),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Name:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.purple)),
                  SizedBox(height: 10,),
                  Text(widget.name.isNotEmpty ? widget.name : "Devloper",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,)),
                  SizedBox(height: 10,),
                  Text("Email:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.purple)),
                  SizedBox(height: 10,),
                  Text(widget.email.isNotEmpty ? widget.email:"bhavesh123@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,)),
                  SizedBox(height: 10,),
                  Text("Skills:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.purple)),
                  SizedBox(height: 10,),
                  Wrap(
                    spacing: 8, // Adjust the spacing between Text widgets as needed
                    children: words.map((word) {

                      return Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(word.trim().isNotEmpty ? word.trim() : word = skills.first ,style:TextStyle(color: Colors.white),),
                          ),
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.yellow,
                                  Colors.purple,
                                ],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ));
                    }).toList(),
                  ),
                  SizedBox(height: 10,),
                  Text("Work Experiencr:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.purple)),
                  SizedBox(height: 10,),
                  Text(widget.exp.isNotEmpty ? widget.exp : "1+",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,)),
                  SizedBox(height: 40,),
                  Center(
                    child: Container(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(onPressed: (){
                        Get.to(EditProfileScreen());
                      }, child: Text("Edit Profile",style: TextStyle(color: Colors.white,fontSize: 34),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple.withOpacity(0.8),
                          elevation: 0,
                        ),

                      ),
                    ),
                  ),




                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
