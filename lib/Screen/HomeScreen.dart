import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imltest_bhavesh/Screen/EditProfileScreen.dart';
import 'package:imltest_bhavesh/Screen/LoginScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _skills = ["Swift", "Dart", "C++"];
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
                  Get.to(LoginScreen());
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
                  Text("Developer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,)),
                  Text("Email:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.purple)),
                  Text("Developer@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,)),
                  SizedBox(height: 10,),
                  Text("Skills:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.purple)),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("JAVA",style:TextStyle(color: Colors.white),),
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
                              )),
                      Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text("JAVA",style:TextStyle(color: Colors.white),),
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
                          )),
                      Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text("JAVA",style:TextStyle(color: Colors.white),),
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
                          )),

                  ],),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text("JAVA",style:TextStyle(color: Colors.white),),
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
                          )),
                      Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text("JAVA",style:TextStyle(color: Colors.white),),
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
                          )),
                      Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text("JAVA",style:TextStyle(color: Colors.white),),
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
                          )),

                    ],),
                  SizedBox(height: 10,),
                  Text("Work Experiencr:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.purple)),
                  Text("1+ Year",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,)),
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
          // Container(height: double.infinity,width: double.infinity,
          //   child: Expanded(
          //     child: ListView.builder(
          //       scrollDirection: Axis.horizontal,
          //       itemCount: _skills.length,
          //       itemBuilder: (BuildContext context, int index) {
          //         return Container(
          //           child: Text(_skills[index]),
          //         );
          //       },
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
