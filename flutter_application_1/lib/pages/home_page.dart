import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/intro_page.dart';

import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';
import 'shop_page.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex =0;

  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex= index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),

    const CartPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
          icon:const Icon(
          Icons.menu,
        color: Colors.black,),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        ),
      ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          
          children: [
            DrawerHeader(child: Image.asset('lib/images/logonike.png',
            color: Colors.white,)
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Divider
              (color: Colors.grey[800],),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[900],
              ),
              onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => HomePage())
                );
            }, 
            child: ListTile(leading: Icon(Icons.home, color: Colors.white,),
            title: Text('Home', style: TextStyle(color: Colors.white),),),
            
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[900],
              ),
              onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => profile())
                );
            }, 
            child: ListTile(leading: Icon(Icons.person, color: Colors.white,),
            title: Text('Profile', style: TextStyle(color: Colors.white),),),
            
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[900],
              ),
              onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => introPage())
                );
            }, 
            child: ListTile(leading: Icon(Icons.exit_to_app, color: Colors.white,),
            title: Text('Logout', style: TextStyle(color: Colors.white),),),
            
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      );

    
    
  }
}