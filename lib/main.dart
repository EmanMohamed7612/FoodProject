import 'package:flutter/material.dart';
import 'package:task/task4/listfood.dart';
import 'package:task/task4/loginpage.dart';
import 'package:task/task4/signuppage.dart';
import 'package:task/task4/spalsh_screen.dart';
import 'package:task/task2/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
    //  FoodListPage()
      SpalshScreen()
    // SignUpPage()
       //LoginPage(),
    );
  }
}
//من مطبخنا... إلى قلبك






// import 'package:flutter/material.dart';
// import 'package:task/task2/login_screen1.dart';
// import 'package:task/task2/otp_screen.dart';
// import 'package:task/task2/register_screen.dart';
// import 'package:task/task2/splash_screen.dart';
// import 'package:task/task2/welcome_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
      
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home:
//       //WelcomeScreen()
//       //OtpScreenSimple()
//     //  SplashScreen()
//       // RegisterScreen()
//     //  LoginScreen(),
    
//     );
//   }
// }
