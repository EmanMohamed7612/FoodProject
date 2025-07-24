import 'package:flutter/material.dart';
import 'package:task/task4/welcomefood.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 15), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WelcomeFood()),
      );
    });
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox.expand(
        child: Image.asset(
          'images/spalshfood.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  
  }
}

