import 'package:flutter/material.dart';
import 'package:task/task2/app_colors.dart';
import 'package:task/task2/app_strings.dart';
import 'package:task/task2/forget_password_row.dart';

class LoginScreenConente extends StatelessWidget {
  const LoginScreenConente({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.loginScreenWelcomeText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        TextField(
          decoration: InputDecoration(
            labelText: AppStrings.loginScreenPhonenumberTextFiled,
            border: const OutlineInputBorder(),
          ),
          textDirection: TextDirection.rtl,
        ),
        const SizedBox(height: 20),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'كلمة المرور',
            fillColor: AppColors.whiteApp,
            filled: true,
            border: const OutlineInputBorder(),
          ),
          textDirection: TextDirection.rtl,
        ),
        const SizedBox(height: 15),
        const ForgetPasswordRow(firstWhiteText: 'هل نسيت كلمة المرور؟'),
        const SizedBox(height: 25),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.secnderyColor,
            minimumSize: const Size(double.infinity, 50),
          ),
          child: const Text(
            'تسجيل الدخول',
            style: TextStyle(fontSize: 18),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 2),
          child: ForgetPasswordRow(
            firstWhiteText: 'إنشاء حساب ',
            secoednBlcakText: 'ليس لديك حساب؟',
          ),
        ),
      ],
    );
  }
}
