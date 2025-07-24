import 'package:flutter/material.dart';
import 'welcome_screen.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => WelcomeScreen()),
          );
        },
        child: Stack(
          children: [
            SizedBox.expand(
              child: Image.asset(
                'images/535082.jpeg.webp',
                fit: BoxFit.cover,
              ),
            ),

            Container(
              color: Colors.black.withOpacity(0.3),
            ),

            Center(
              child: Text(
                'دعنا نبدأ',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
