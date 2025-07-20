import 'package:flutter/material.dart';
import 'package:task/login_screen1.dart';
import 'package:task/otp_screen.dart';
import 'package:task/register_screen.dart';
import 'package:task/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:
      //OtpScreenSimple()
    //  SplashScreen()
       RegisterScreen()
      //LoginScreen(),
    
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:task/loginpage.dart';
// import 'package:task/signuppage.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home:
//       SignUpPage()
//        //LoginPage(),
//     );
//   }
// }