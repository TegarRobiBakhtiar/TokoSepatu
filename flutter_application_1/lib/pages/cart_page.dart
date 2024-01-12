import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/intro_page.dart';
import 'package:provider/provider.dart';
import '../components/cart_item.dart';
import '../models/cart.dart';
import '../models/shoe.dart';
import '../pages/checkout_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            const Text('Keranjang',
              style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24
                ),
            ),
            ElevatedButton(
           onPressed: () {
         Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const introPage()),
    );
  },
  style: ElevatedButton.styleFrom(
    primary: Colors.blue, // warna latar belakang tombol
    onPrimary: Colors.white, // warna teks pada tombol
  ),
  child: const Text('Checkout'),
),
            const SizedBox(height: 20),

            Expanded(child: ListView.builder(
              itemCount: value.getUsercart().length,
              itemBuilder: (context, index) {
              // get individual shoe
              Shoe individualShoe = value.getUsercart()[index];

              // return the cart
              return CartItem(shoe: individualShoe,);
            },),)
             

            
          ],
        ),
      ),
    );
  }
}