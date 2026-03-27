import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String message = "";

  void login(){
    String email = emailController.text;
    String password = passwordController.text;

    if (email == "admin" && password == "1234"){
      setState(() {
        message = 'login successful';
      });
    } else {
      setState(() {
      message = 'login failed. Please enter valid email or Password';        
      });
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold( 
      appBar: AppBar(  
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      
      body: Padding(  
        padding: EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(  
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            TextField(  
              controller: emailController,
              decoration: InputDecoration(  
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(  
                fillColor: Colors.grey,
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(  
              onPressed: login,
              child: Text('Login'),
            ),

            SizedBox(height: 20),

            Text(
              message,
              style: TextStyle(
                fontSize: 18,
                color: Colors.red,
              ),
            ),
          ],
        )
      ),
    );
  }
}