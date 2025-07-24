import 'package:flutter/material.dart';
import 'package:task/task4/otp_food.dart';
import 'package:task/task2/app_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>(); 
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              // Email
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 231, 245, 194),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  prefixIcon: const Icon(Icons.email),
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!value.contains('@')) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // Password
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 231, 245, 194),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  prefixIcon: const Icon(Icons.lock),
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

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
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),

              
              TextButton(
                onPressed: () {
                  
                },
                child: const Text('Forget Password?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
