import 'package:flutter/material.dart';
// import 'package:flutter_application_1/pages/login_page.dart';
// import 'login_page.dart';
import 'utama.dart';

// import 'home_page.dart';

class introPage extends StatelessWidget {
  const introPage ({super.key});

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
        
            const Text
            ('Just Do It',
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20,
            ),
            ),
        
             const SizedBox(height: 24,),
        
            const Text
            ('Tempat Sepatu Nike Berada!',
            style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
            ),
            textAlign: TextAlign.center,
            ),
        
               const SizedBox(height: 24,),

               GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => utamaPage()
                ),
                ),
                 child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text('Beli Sekarang',
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