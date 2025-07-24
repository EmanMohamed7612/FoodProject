import 'package:flutter/material.dart';
import 'package:task/task2/app_colors.dart';
import 'package:task/task2/register_screen_content.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // صورة الخلفية
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // الفورم
          Expanded(
            flex: 5,
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
              child: const RegisterScreenContent(),
            ),
          ),
        ],
      ),
    );
  }
}
