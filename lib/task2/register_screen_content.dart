import 'package:flutter/material.dart';
import 'package:task/task2/app_colors.dart';
import 'package:task/task2/forget_password_row.dart';

class RegisterScreenContent extends StatelessWidget {
  const RegisterScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text(
            'إنشاء حساب جديد',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 25),

          // الاسم
          TextField(
            decoration: const InputDecoration(
              labelText: 'الاسم الكامل',
              border: OutlineInputBorder(),
            ),
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(height: 15),

          // رقم الهاتف
          TextField(
            decoration: const InputDecoration(
              labelText: 'رقم الهاتف',
              border: OutlineInputBorder(),
            ),
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(height: 15),

          // كلمة المرور
          TextField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'كلمة المرور',
              border: OutlineInputBorder(),
            ),
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(height: 15),

          // تأكيد كلمة المرور
          TextField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'تأكيد كلمة المرور',
              border: OutlineInputBorder(),
            ),
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(height: 25),

          // زر الإنشاء
          ElevatedButton(
            onPressed: () {
              // TODO: تنفيذ التسجيل
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.secnderyColor,
              minimumSize: const Size(double.infinity, 50),
            ),
            child: const Text(
              'إنشاء حساب',
              style: TextStyle(fontSize: 18),
            ),
          ),
            const Padding(
          padding: EdgeInsets.only(top: 2),
          child: ForgetPasswordRow(
            firstWhiteText: 'تسجيل دخول',
            secoednBlcakText: 'لديك حساب؟',
          ),
        ),
        ],
      ),
    );
  }
}
