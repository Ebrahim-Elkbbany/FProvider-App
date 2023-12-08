import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  int quantity =0 ;

  addToCart(){
    quantity++;
    notifyListeners();
  }

  removeFromCart(){
    if(quantity >0) {
      quantity--;
    }
    notifyListeners();
  }
}