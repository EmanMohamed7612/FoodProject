import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Sign Up',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          )),
          Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Creat your account',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          )),
          TextField(
            decoration: InputDecoration(
              fillColor: Color.fromARGB(255, 244, 217, 248),
              filled: true,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              prefixIcon: Icon(Icons.person),
              labelText: 'Username',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              fillColor: Color.fromARGB(255, 244, 217, 248),
              filled: true,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              prefixIcon: Icon(Icons.email),
              labelText: 'Email',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              fillColor: Color.fromARGB(255, 244, 217, 248),
              filled: true,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              prefixIcon: Icon(Icons.lock),
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 20),
                TextField(
            decoration: InputDecoration(
              fillColor: Color.fromARGB(255, 244, 217, 248),
              filled: true,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              prefixIcon: Icon(Icons.lock),
              labelText: 'Confirm Password',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 200,
            height: 50,
            
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor:
              WidgetStatePropertyAll(const Color.fromARGB(255, 222, 140, 237))
              ),
              onPressed: () {}, child: Text('Sign Up')),
          ),
          SizedBox(
            height: 20,
          ),
              SizedBox(
            width: 200,
            height: 50,
            
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor:
              WidgetStatePropertyAll(Color.fromARGB(255, 252, 251, 252))
              ),
              onPressed: () {}, child: Text('Sign in with Google')),),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have account'),
              TextButton(onPressed: () {}, child: Text('login',style:TextStyle(color: Color.fromARGB(255, 222, 140, 237)))),
            ],
          )
        ],
      ),
    ));
  }
}
