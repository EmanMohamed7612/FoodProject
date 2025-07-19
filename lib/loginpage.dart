import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(top:15,bottom: 15,left:20,right:20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Login',
              style: TextStyle(fontSize:25,
              fontWeight: FontWeight.bold ),),
            )),
            TextField(
              
              decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 244, 217, 248),
              filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
                
              ),
            ),
            SizedBox(height: 20,),
              TextField(
              decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 244, 217, 248),
              filled: true,
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(5)
                ),
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                
              ),
            ),
            SizedBox(height:20),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
              style: ButtonStyle(backgroundColor:
              WidgetStatePropertyAll(const Color.fromARGB(255, 222, 140, 237))
              ),
                onPressed: (){},
               child:Text('login') ),
            )
             ,
             TextButton(
              onPressed: (){}, child: 
             Text('Forget Password?'))

          ],
        ),
      )
     
    );
  }
}