import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<Item> _items = [];

  /// An unmodifiable view of the items in the cart.
  get items => _items;

  /// The current total price of all items (assuming all items cost $42).
  double get totalPrice {
    double price = 0;
    for (var element in _items) {
      price += element.price;
    }
    return price;
  }

  /// Adds [item] to cart. This and [removeAll] are the only ways to modify the
  /// cart from the outside.
  void add(Item item) {
    _items.add(item);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  /// Removes all items from the cart.
  void removeAll() {
    _items.clear();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  void removeAtIndex(index) {
    _items.removeAt(index);
    notifyListeners();
  }
}

@immutable
class Item {
  final int id;
  final String name;
  final int price;
  final String url;

  Item(this.id, this.name, this.price, this.url);
}
