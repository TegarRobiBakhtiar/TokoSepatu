import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';

class utamaPage extends StatelessWidget {
  const utamaPage({super.key});

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

               GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Login()
                ),
                ),
                 child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black,),
                    
                    borderRadius: BorderRadius.circular(12),
                  ),

                  padding: const EdgeInsets.all(10),
                  child: const Center(
                    child: Text('Login',
                    style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,),
                    ),
                  ),
                 ),
               ),

               const SizedBox(height: 20,),

               GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()
                ),
                ),
                 child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Center(
                    child: Text('Register',
                    style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,),
                    ),
                  ),
                 ),
               )

            ],),
        ),
      ),
    );
  }
}