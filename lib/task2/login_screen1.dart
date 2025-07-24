import 'package:flutter/material.dart';
import 'package:task/task2/app_colors.dart';
import 'package:task/task2/login_screen_content.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.label_important)),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/535082.jpeg.webp'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // الفورم
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: const LoginScreenConente(),
            ),
          ),
        ],
      ),
    );
  }
}
