import 'package:flutter/material.dart';
import '../pages/shop_page.dart';

void main() {
  runApp(profile());
}

class profile extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _EditProfileUIState(),
    );
  }
}

class _EditProfileUIState extends StatelessWidget {
  bool isObsecurePassword = true;
  _EditProfileUIState createState() => _EditProfileUIState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PROFILE',
          textAlign: TextAlign.center
          ),
          backgroundColor: Color.fromARGB(255, 8, 109, 224),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 15, top: 20, right: 15),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.1)
                      )
                    ],
                    shape: BoxShape.circle,
                    image: DecorationImage(image: NetworkImage('https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png'))
                  ),
                ),
                SizedBox(height: 30),
                buildTextField("Full Name", "Van", false ),
                buildTextField("Email", "Van@gmail.com", false ),
                buildTextField("Password", "*******", true ),
                buildTextField("Location", "Semarang", false ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text('CANCEL',
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Colors.black
                      ),),
                     style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20) )
                     ), 
                    ),
                    ElevatedButton(
                      onPressed: () {
                        
                      },
                      child: Text("SAVE", style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Colors.white
                      ),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                    ),
                    
                  ],
                )


              ],
            ),
          ),
        ));
  }
}

Widget buildTextField(String labelText, String placeholder, bool isPasswordTextField) {
  return Padding(
    padding: EdgeInsets.only(bottom: 30),
    child: TextField(
      obscureText: isPasswordTextField ? true : false,
      decoration: InputDecoration(
        suffixIcon: isPasswordTextField ?
        IconButton(
          icon: Icon(Icons.remove_red_eye, color: Colors.grey),
          onPressed: () {}
        ): null,
        contentPadding: EdgeInsets.only(bottom: 5),
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeholder,
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        color: Colors.grey
        )
      ),
    ),
  );
}