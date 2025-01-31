import '../views/search/fooditem.dart';
import 'package:flutter/material.dart';
class FoodData {
  static final List<FoodItem> foodItems = [
    FoodItem(
        imageurl: 'https://t4.ftcdn.net/jpg/07/28/70/61/240_F_728706134_3IXohNEHAapHZCZlAdZuS2JoiFPxP86H.jpg',
        title: 'Dum biryani',
        price: 233,
        rating: 4.9,
        restaurant: 'Biryani House',
        isAvailable: true,
        ratingCount: '5.6K',
        description: "Indulge in the rich and aromatic flavors of our Chicken Dum Biryani. This traditional dish features tender pieces of chicken marinated in a blend of spices, layered with fragrant basmati rice, and slow-cooked to perfection in a sealed pot. Each bite is a symphony of tastes and textures, offering a deliciously satisfying meal that is both hearty and flavorful."
    ),
    FoodItem(
        imageurl: 'https://img.freepik.com/free-photo/pizza-pizza-filled-with-tomatoes-salami-olives_140725-1200.jpg?size=626&ext=jpg&ga=GA1.1.1147851846.1719125836&semt=sph',
        title: 'Pizza',
        price: 312,
        rating: 3.5,
        restaurant: 'Pizza Place',
        isAvailable: true,
        ratingCount: '5.6K',
        description: "Experience the classic taste of Italy with our Margherita Pizza. Made with a crisp, thin crust and topped with rich tomato sauce, fresh mozzarella cheese, and fragrant basil leaves, this pizza is a celebration of simple, authentic flavors. Every bite delivers a perfect balance of ingredients, making it a timeless favorite for all pizza lovers."
    ),
    FoodItem(
      imageurl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy6XWubwjugAT8xwXeUG0ap_CqlshrnSMC8g&s',
      title: 'Burger',
      price: 323,
      rating: 3,
      restaurant: 'Burger Joint',
      isAvailable: true,
      ratingCount: '5.6K',
      description: "Sink your teeth into our Cheese Hot Hamburger, a perfect blend of succulent beef patty, melted cheese, and fresh veggies, all nestled within a warm, toasted bun. Topped with a spicy special sauce that adds a fiery kick, this burger is a mouthwatering delight for all burger enthusiasts. Perfect for lunch, dinner, or a hearty snack!",
    ),
    FoodItem(
      imageurl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_4bvwARR2ih-2rQHdoAxa03XGBgU9l2jcrQ&s',
      title: 'Fish fry',
      price: 323,
      rating: 3,
      restaurant: 'shelton',
      isAvailable: true,
      ratingCount: '5.6K',
      description: "Sink your teeth into our Cheese Hot Hamburger, a perfect blend of succulent beef patty, melted cheese, and fresh veggies, all nestled within a warm, toasted bun. Topped with a spicy special sauce that adds a fiery kick, this burger is a mouthwatering delight for all burger enthusiasts. Perfect for lunch, dinner, or a hearty snack!",
    ),
    FoodItem(
      imageurl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbpHwS45vO1zn1y9n5vnuZk-sGWmYgWglx_Q&s',
      title: 'Sandwiche',
      price: 323,
      rating: 3,
      restaurant: 'Sage&salt',
      isAvailable: true,
      ratingCount: '5.6K',
      description: "Sink your teeth into our Cheese Hot Hamburger, a perfect blend of succulent beef patty, melted cheese, and fresh veggies, all nestled within a warm, toasted bun. Topped with a spicy special sauce that adds a fiery kick, this burger is a mouthwatering delight for all burger enthusiasts. Perfect for lunch, dinner, or a hearty snack!",
    ),
    FoodItem(
      imageurl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLylOGfos5dXTKuwilESHWR9YtzZsaKEkRpw&s',
      title: 'Hamaburger',
      price: 323,
      rating: 3,
      restaurant: 'Tempest Tapas',
      isAvailable: true,
      ratingCount: '5.6K',
      description: "Sink your teeth into our Cheese Hot Hamburger, a perfect blend of succulent beef patty, melted cheese, and fresh veggies, all nestled within a warm, toasted bun. Topped with a spicy special sauce that adds a fiery kick, this burger is a mouthwatering delight for all burger enthusiasts. Perfect for lunch, dinner, or a hearty snack!",
    ),
    FoodItem(
      imageurl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYctwalcARbCilNsuSj7ChPc292TGOdKApgA&s',
      title: ' chickensoup',
      price: 323,
      rating: 3,
      restaurant: 'Spirits',
      isAvailable: true,
      ratingCount: '5.6K',
      description: "Sink your teeth into our Cheese Hot Hamburger, a perfect blend of succulent beef patty, melted cheese, and fresh veggies, all nestled within a warm, toasted bun. Topped with a spicy special sauce that adds a fiery kick, this burger is a mouthwatering delight for all burger enthusiasts. Perfect for lunch, dinner, or a hearty snack!",
    ),
    FoodItem(
      imageurl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsUK3yzaO8Iaei8yL-0BHUrhp7a65XAN8MYg&s',
      title: 'french fries',
      price: 323,
      rating: 3,
      restaurant: 'Tres Gatos',
      isAvailable: true,
      ratingCount: '5.6K',
      description: "Sink your teeth into our Cheese Hot Hamburger, a perfect blend of succulent beef patty, melted cheese, and fresh veggies, all nestled within a warm, toasted bun. Topped with a spicy special sauce that adds a fiery kick, this burger is a mouthwatering delight for all burger enthusiasts. Perfect for lunch, dinner, or a hearty snack!",
    ),
    FoodItem(
      imageurl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt2d_HAe-gzlrg5BU_VSys9LHVb2yi2qgYQQ&s' ,
      title: 'Paneer tikka',
      price: 323,
      rating: 3,
      restaurant: 'veg house',
      isAvailable: true,
      ratingCount: '5.6K',
      description: "Sink your teeth into our Cheese Hot Hamburger, a perfect blend of succulent beef patty, melted cheese, and fresh veggies, all nestled within a warm, toasted bun. Topped with a spicy special sauce that adds a fiery kick, this burger is a mouthwatering delight for all burger enthusiasts. Perfect for lunch, dinner, or a hearty snack!",
    ),
    FoodItem(
      imageurl: "https://www.licious.in/blog/wp-content/uploads/2020/12/Chicken-Kebab-600x600.jpg",
      title:'chicken kebab',
      price: 323,
      rating: 3,
      restaurant: 'kebab chef',
      isAvailable: true,
      ratingCount: '5.6K',
      description: "Sink your teeth into our Cheese Hot Hamburger, a perfect blend of succulent beef patty, melted cheese, and fresh veggies, all nestled within a warm, toasted bun. Topped with a spicy special sauce that adds a fiery kick, this burger is a mouthwatering delight for all burger enthusiasts. Perfect for lunch, dinner, or a hearty snack!",
    ),
    FoodItem(
      imageurl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTveundV07epSMFY1obc9W9ilHYAFXGN8xgug&s",
      title:'Noodles',
      price: 323,
      rating: 3,
      restaurant: 'spring cafe',
      isAvailable: true,
      ratingCount: '5.6K',
      description: "Sink your teeth into our Cheese Hot Hamburger, a perfect blend of succulent beef patty, melted cheese, and fresh veggies, all nestled within a warm, toasted bun. Topped with a spicy special sauce that adds a fiery kick, this burger is a mouthwatering delight for all burger enthusiasts. Perfect for lunch, dinner, or a hearty snack!",
    ),
    FoodItem(
      imageurl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJMXAp-nKrs-zLtHCa2GolKM-dTmmf2GoLsA&s",
      title:'mutton keema',
      price: 323,
      rating: 3,
      restaurant: 'Blifull',
      isAvailable: true,
      ratingCount: '5.6K',
      description: "Sink your teeth into our Cheese Hot Hamburger, a perfect blend of succulent beef patty, melted cheese, and fresh veggies, all nestled within a warm, toasted bun. Topped with a spicy special sauce that adds a fiery kick, this burger is a mouthwatering delight for all burger enthusiasts. Perfect for lunch, dinner, or a hearty snack!",
    ),
    FoodItem(
      imageurl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2Sb--nkeB4z6WvaxsA7_qpIxcPIN-BKeLcQ&s",
      title:'Prawns fry',
      price: 323,
      rating: 3,
      restaurant: 'sea flow',
      isAvailable: true,
      ratingCount: '5.6K',
      description: "Sink your teeth into our Cheese Hot Hamburger, a perfect blend of succulent beef patty, melted cheese, and fresh veggies, all nestled within a warm, toasted bun. Topped with a spicy special sauce that adds a fiery kick, this burger is a mouthwatering delight for all burger enthusiasts. Perfect for lunch, dinner, or a hearty snack!",
    ),

    // Add more items here as needed
  ];
}