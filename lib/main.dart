

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Constants/firebase_constants.dart';
import 'Controllers/auth_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  firebaseInitialization.then((value) {
    // we are going to inject the auth controller over here!
    Get.put(AuthController());
  });
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CircularProgressIndicator(),
    );
  }
}
