import 'package:flutter/material.dart';
import 'package:task/task4/otp_food.dart';
import 'package:task/task2/app_colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Create your account',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
              ),

              // Username
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 231, 245, 194),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Username',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter username';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              // Email
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 231, 245, 194),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter email';
                  }
                  if (!value.contains('@')) {
                    return 'Enter valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              // Password
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 231, 245, 194),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter password';
                  }
                  if (value.length < 6) {
                    return 'Password too short';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              // Confirm Password
              TextFormField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 231, 245, 194),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Confirm Password',
                ),
                validator: (value) {
                  if (value != _passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              // Sign Up button
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(AppColors.mainfood),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => OtpScreen()));
                    }
                  },
                  child: Text('Sign Up'),
                ),
              ),
              SizedBox(height: 20),

              // Sign in with Google button
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xFFFDFBFC)),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Sign in with Google',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),

              // Already have account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have account?'),
                  TextButton(
                    onPressed: () {
                      // تروح لصفحة تسجيل الدخول
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: AppColors.mainfood),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
