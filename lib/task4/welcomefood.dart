import 'package:flutter/material.dart';
import 'package:task/task4/loginpage.dart';
import 'package:task/task4/signuppage.dart';
import 'package:task/task2/app_colors.dart';

class WelcomeFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // لو فيه خلفية مثلاً
          Container(color: Colors.white),

          Positioned(
            top: screenHeight / 2, // يبدأ من نصف الشاشة
            left: 0,
            right: 0,
            child: Container(
                height: screenHeight / 2, 
                decoration: BoxDecoration(
                    color: AppColors.mainfood,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'اهلا بك في مطعمنا',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => LoginPage()));
                          },
                          child: Text(
                            'تسجيل الدخول',
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                          onPressed: () {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (_) => SignUpPage()));
                          },
                          child: Text(
                            'انشاء حساب',
                            style: TextStyle(color: Colors.black),
                          )),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
