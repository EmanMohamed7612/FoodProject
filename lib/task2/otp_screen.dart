import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreenSimple extends StatelessWidget {
  const OtpScreenSimple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:150),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
            color:Color(0xFF1684A5)
          ),
        
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'أدخل رمز التحقق OTP',
                style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'تم إرسال رمز التحقق إلى 010*****123',
                style: TextStyle(color: Colors.white70, fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              OtpTextField(
                numberOfFields: 6,
                borderColor: Colors.white,
                focusedBorderColor: Colors.deepOrange,
                cursorColor: Colors.white,
                showFieldAsBox: true,
                fieldWidth: 45,
                textStyle: const TextStyle(color: Colors.white, fontSize: 20),
                onCodeChanged: (String code) {
                  // الكود بيتغير هنا
                },
                onSubmit: (String verificationCode) {
                  // لما المستخدم يكمل كتابة الكود
                  debugPrint("OTP هو: $verificationCode");
                },
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "تأكيد",
                  style: TextStyle(
                    color: Color(0xFF1684A5),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
