import 'package:flutter/foundation.dart';
import '../search/fooditem.dart';

class CartProvider with ChangeNotifier {
  List<FoodItem> _cartItems = [];

  List<FoodItem> get cartItems => _cartItems;

  void addToCart(FoodItem item) {
    int index = _cartItems.indexWhere((element) => element.title == item.title);
    if (index == -1) {
      _cartItems.add(item);
    } else {
      _cartItems[index].quantity++;
    }
    notifyListeners();
  }

  void removeFromCart(FoodItem item) {
    _cartItems.removeWhere((element) => element.title == item.title);
    notifyListeners();
  }

  void incrementQuantity(FoodItem item) {
    int index = _cartItems.indexWhere((element) => element.title == item.title);
    if (index != -1) {
      _cartItems[index].quantity++;
      notifyListeners();
    }
  }

  void decrementQuantity(FoodItem item) {
    int index = _cartItems.indexWhere((element) => element.title == item.title);
    if (index != -1 && _cartItems[index].quantity > 1) {
      _cartItems[index].quantity--;
      notifyListeners();
    }
  }

  double get totalAmount {
    return _cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));
  }
}
