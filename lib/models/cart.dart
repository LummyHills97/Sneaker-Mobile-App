import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{

// list of shoes for sale
List<Shoe> shoeShop = [
  Shoe(
    name: 'Metcon 9', 
    price: '236', 
    description: 'The forward-thinking design of his latest signature shoe', 
    imagePath: 'lib/images/custom-nike-metcon-9.png',
    ),

    Shoe(
    name: 'Pegasus', 
    price: '250', 
    description: 'You\'ve got the hops and the speed-lace up in shoes that enhances', 
    imagePath: 'lib/images/pegasus-41-mens.png',
    ),

    Shoe(
    name: 'Dunk Low', 
    price: '276', 
    description: 'The forward-thinking design of his latest signature shoe', 
    imagePath: 'lib/images/air-jordan-1-low.png',
    ),

    Shoe(
    name: 'Dunk High', 
    price: '300', 
    description: 'A secure midfoot strap is suited for scoring binges and defensive', 
    imagePath: 'lib/images/air-jordan-i-high.png',
    ),
];

// list of items in user cart
List<Shoe> userCart = [];

// get list of shoes for sale
List<Shoe> getShoeList() {
  return shoeShop;
}

// get cart
List<Shoe> getUserCart() {
  return userCart;
}

// add items to cart
void addItemToCart(Shoe shoe) {
  userCart.add(shoe);
  notifyListeners();
}

// remove item from cart
void removeItemFromCart(Shoe shoe) {
  userCart.remove(shoe);
  notifyListeners();
}




}