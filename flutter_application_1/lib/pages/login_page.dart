import 'package:flutter/material.dart';
import 'home_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  void loginPage() {
    setState(() {
      isLoading = true;
    });

    Future.delayed(Duration(seconds: 2), () {
      if (usernameController.text == 'user' && passwordController.text == 'password') {
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
      } else {
        showDialog(
          context: context,
         builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Username atau password salah'),
          actions: <Widget>[
            TextButton(onPressed: () {
              Navigator.of(context).pop();
            }, 
            child: Text('OK'),),
          ],
         ),
         );
      }

      setState(() {
        isLoading = false;
      });
    },);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('lib/images/logonike.png', height: 240,),
              ),
        
            const SizedBox(height: 48,),

            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                icon: Icon(Icons.person)
              ),
            ),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                icon: Icon(Icons.lock),
              ),
            ),

            const SizedBox(height: 30),
            
            ElevatedButton(
              onPressed: loginPage,
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                )
              ),
              child: Text('Login', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
            ),
            

            
            
        
           
            
            ],),
        ),
      ),
    );
  }
}