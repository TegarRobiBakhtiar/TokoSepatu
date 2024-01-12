import 'package:flutter/widgets.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'zoom Freak', 
      price: '1.500.000', 
      description: 'Sangat menawan!', 
      imagePath: 'lib/images/black.jpg',
      ),

      Shoe(
        name: 'Air Zoom',
        price: '2.000.000',
        description: 'Membuatmu Percaya Diri!',
        imagePath: 'lib/images/airzoom.jpg',
      ),

      Shoe(
        name: 'Blazer',
        price: '1.300.000',
        description: 'Membaralah Kawan!',
        imagePath: 'lib/images/blazer.jpg',
      ),

      Shoe(
        name: 'Huarache',
        price: '1.300.000',
        description: 'Berkulitas seperti anda!',
        imagePath: 'lib/images/huarache.jpg',
      ),
  ];

  // list of time in user cartUs
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList () {
    return shoeShop;
  }
  // get cart
  List<Shoe> getUsercart () {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}