import 'package:exam/features/data/data.dart';
import 'package:exam/features/home/models/homework.dart';
import 'package:exam/features/home/models/product.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  final List<Product> products = data.map((e) => Product.fromMap(e)).toList();

  final List<Cart> cart = [];
  final List<String> tx = [];
  void addToCart(Product product) {
    for (int i = 0; i < cart.length; i++) {
      final item = cart[i];
      if (item.product.id == product.id) {
        final newItem = Cart(quantity: item.quantity + 1, product: product);
        cart[i] = newItem;
        return;
      }
    }
    final item = Cart(quantity: 1, product: product);
    cart.add(item);
  }

  void removeToCart(Product product) {
    for (int i = 0; i < cart.length; i++) {
      final item = cart[i];
      if (item.product.id == product.id) {
        if (item.quantity == 1) {
          cart.removeAt(i);
        }
        final removeitem = Cart(quantity: item.quantity - 1, product: product);
        cart[i] = removeitem;
        return;
      }
    }
  }

  void clearLIst() {
    cart.clear();
    notifyListeners();
  }

  void favoriteToCart(int id) {
    for (int i = 0; i < products.length; i++) {
      final product = products[i];
      if (id == product.id) {
        product.isFavorite = !product.isFavorite;
        notifyListeners();
      }
    }
  }

  void AntifavoriteToCart() {
    for (int i = 0; i < products.length; i++) {
      final product = products[i];
      product.isFavorite = false;
      notifyListeners();
    }
  }

  void SendZametka(String ct) {
    tx.add(ct);
    notifyListeners();
  }
}
