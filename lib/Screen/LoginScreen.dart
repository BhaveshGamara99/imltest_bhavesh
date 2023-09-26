
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imltest_bhavesh/Screen/HomeScreen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  bool rememberme = false;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 1;
    double height = MediaQuery.of(context).size.height * 1;
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(height: 50,width: 100,
                      decoration: const BoxDecoration(
                      color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.25,),
              Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              SizedBox(height:10),
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
              SizedBox(height:10),
              TextFormField(
                controller: _passwordController,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16),),
                    borderSide: BorderSide(width: 5),
                  ),
                  hintText: 'Password',
                  suffixIcon: InkWell(
                    onTap: (){
                        _toggle();
                    },
                      child:_obscureText ? Icon(Icons.visibility_off,color: Colors.pink,) : Icon(Icons.visibility,color: Colors.pink,) ,
                  ),
                ),
                obscureText: _obscureText,
              ),
              SizedBox(height:10),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(

                    activeColor: Colors.purple,

                    value: this.rememberme,
                    onChanged: (bool? value) {
                      setState(() {
                        this.rememberme = value!;
                      });
                    },
                  ),
                  Text("Remember Me?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                ],
              ),
              SizedBox(height:10),
              Container(
                width: 200,
                height: 50,
                child: ElevatedButton(onPressed: () async{

                  Get.to(HomeScreen());
                }, child: Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 34),),
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

    );
  }
}
