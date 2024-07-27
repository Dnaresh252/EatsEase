class FoodItem {
  final String imageurl;
  final String title;
  final double price;
  final double rating;
  final String restaurant;
  final bool isAvailable;
  final String ratingCount;
  final String description;
  int quantity;

  FoodItem({
    required this.imageurl,
    required this.title,
    required this.price,
    required this.rating,
    required this.restaurant,
    required this.isAvailable,
    required this.ratingCount,
    required this.description,
    this.quantity = 1,
  });

  factory FoodItem.fromMap(Map<String, dynamic> data) {
    return FoodItem(
      imageurl: data['imageurl'],
      title: data['title'],
      price: data['price'],
      rating: data['rating'],
      restaurant: data['restaurant'],
      isAvailable: data['isAvailable'],
      ratingCount: data['ratingCount'],
      description: data['description'],
      quantity: data['quantity'] ?? 1,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imageurl': imageurl,
      'title': title,
      'price': price,
      'rating': rating,
      'restaurant': restaurant,
      'isAvailable': isAvailable,
      'ratingCount': ratingCount,
      'description': description,
      'quantity': quantity,
    };
  }
}
