import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_grocery/Common/custom_container.dart';
import 'package:get/get.dart';
import '../../Common/app_style.dart';
import '../../Common/itemdetailpage.dart';
import '../../constants/constants.dart';
import '../home/home_page.dart';
import 'fooditem.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();
  final List<FoodItem> _fooditems = [
    FoodItem(
        imageurl: 'https://t4.ftcdn.net/jpg/07/28/70/61/240_F_728706134_3IXohNEHAapHZCZlAdZuS2JoiFPxP86H.jpg', // Replace with your image URL
        title: 'Dum biryani',
        price: 233,
        rating: 4.9,
        restaurant: 'Biryani House',
        isAvailable:true,
        ratingCount: '5.6K',
        description: "Indulge in the rich and aromatic flavors of our"
            " Chicken Dum Biryani. This traditional dish features tender "
            "pieces of chicken marinated in a blend of spices, layered with "
            "fragrant basmati rice, and slow-cooked to perfection in a sealed pot."
            " Each bite is a symphony of tastes and textures, offering a deliciously "
            "satisfying meal that is both hearty and flavorful."
    ),
    FoodItem(
        imageurl: 'https://img.freepik.com/free-photo/pizza-pizza-filled-with-tomatoes-salami-olives_140725-1200.jpg?size=626&ext=jpg&ga=GA1.1.1147851846.1719125836&semt=sph',
        title: 'Pizza',
        price: 312,
        rating: 3.5,
        restaurant: 'Pizza Place',
        isAvailable:true,
        ratingCount: '5.6K',
        description: "Experience the classic taste of Italy with our Margherita Pizza. Made with a crisp, thin crust and topped with rich tomato "
            "sauce, fresh mozzarella cheese, and fragrant basil leaves, "
            "this pizza is a celebration of simple,"
            " authentic flavors. Every bite delivers a perfect "
            "balance of ingredients, making it a timeless favorite "
            "for all pizza lovers."
    ),
    FoodItem(
      imageurl: 'https://img.freepik.com/free-photo/view-ready-eat-delicious-meal-go_23-2151431747.jpg?ga=GA1.1.1147851846.1719125836&semt=sph',
      title: 'Burger',
      price: 323,
      rating: 3,
      restaurant: 'Pizza Place',
      isAvailable:true,
      ratingCount: '5.6K',
      description:"Sink your teeth into our Cheese Hot Hamburger, a perfect blend of"
          "succulent beef patty, melted cheese, and fresh veggies, all nestled"
          " within a warm, toasted bun. Topped with a spicy special sauce that"
          " adds a fiery kick, this burger is a mouthwatering delight for all"
          " burger enthusiasts. Perfect for lunch, dinner, or a hearty snack!",
    ),
    // Add more items here
  ];
  List<FoodItem> _foods = [];
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    _foods = []; // Start with default content
  }

  void _filterItems(String query) {
    setState(() {
      if (query.isEmpty) {
        _isSearching = false;
        _foods = []; // Show empty list when query is empty
      } else {
        _isSearching = true;
        _foods = _fooditems
            .where((item) => item.title.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  void _resetSearch() {
    setState(() {
      _controller.clear();
      _isSearching = false;
      _foods = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_isSearching) {
          _resetSearch();
          return false; // Prevent default back navigation
        }
        return true; // Allow back navigation
      },
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title:Center(child: Text('Search Example',style: appStyle(17, kDark, FontWeight.w700),)
          ),
          
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white,),
                  ),
                  prefixIcon: Icon(Icons.search_sharp),
                ),
                onChanged: _filterItems,
              ),
            ),
          ),
        ),
        body: _foods.isEmpty
            ? _isSearching
            ? Center(child: Text('No items found'))
            : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Popular Searches',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildSuggestionCard('Pizza'),
                  SizedBox(height: 10,),
                  _buildSuggestionCard('Burger'),
                  SizedBox(height: 10,),
                  _buildSuggestionCard('Sushi'),
                  SizedBox(height: 10,),
                  _buildSuggestionCard('Pasta'),

                ],
              ),
            ),
          ],
        )
            : ListView.builder(
          itemCount: _foods.length,
          itemBuilder: (context, index) {
            final item = _foods[index];
            return GestureDetector(
              onTap: () {
                Get.to(()=>ItemDetailPage(item: item),
                    transition:Transition.cupertino,
                    duration:const Duration(milliseconds:900));
              },
              child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
                      ,color: Colors.black),
                  child:Row(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child:Container(
                              margin: EdgeInsets.only(right: 10.w),
                              padding: EdgeInsets.only(top: 0.h),
                              width: MediaQuery.of(context).size.width / 2.7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(item.imageurl),
                                  fit: BoxFit.cover,
                                ),
                                gradient: LinearGradient(
                                  colors: [Colors.black.withOpacity(0.0), Colors.black.withOpacity(0.6)],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,

                                ),
                              )

                          ),
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,),

                              Text(item.title,style: appStyle(22,kOffWhite, FontWeight.w700),),

                              Text('Rs ${item.price}',style: appStyle(15, kOffWhite, FontWeight.bold),),

                              Text(item.restaurant,style: appStyle(15,kOffWhite, FontWeight.w700),),



                            ]
                        )
                      ]
                  )
              )
            );
          },
        ),
      ),
    );
  }

  Widget _buildSuggestionCard(String text) {
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10),
        width: double.infinity,
        height: 140,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
            ,color: Colors.black),
        child:Row(
            children: [
              Align(
                alignment: Alignment.topRight,
                child:Container(
                    margin: EdgeInsets.only(right: 10.w),
                    padding: EdgeInsets.only(top: 0.h),
                    width: MediaQuery.of(context).size.width / 2.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqnILIGGc9ZQJ4Iisl8U4Skga-8Jdl3x5C-Q&s"),
                        fit: BoxFit.cover,
                      ),
                      gradient: LinearGradient(
                        colors: [Colors.black.withOpacity(0.0), Colors.black.withOpacity(0.6)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,

                      ),
                    )

                ),
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),

                    Text("Chicken Chamiws",style: appStyle(22,kOffWhite, FontWeight.w700),),

                    Text('Rs 232',style: appStyle(15, kOffWhite, FontWeight.bold),),

                    Text('Burger chus',style: appStyle(15,kOffWhite, FontWeight.w700),),



                  ]
              )
            ]
        )
    );
  }
}
