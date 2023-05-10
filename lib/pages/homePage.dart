import 'package:flutter/material.dart';
import 'package:food_delivery/pages/search.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';
import './login.dart';
import '../constants/text_constants.dart';
import '../widgets/drawer_listtile.dart';
import '../widgets/choice_chip.dart';
import '../pages/drawer.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class HomePage extends StatelessWidget {
  static const id = 'home_page';
  final _foodItems = [
    {
      "strMealThumb": 'images/icons8-domino-64.png',
      'strMeal': "Dominos Pizza",
      'strCategory': 'Pizza'
    },
    {
      "strMealThumb": 'images/icons8-pizza-hut-64.png',
      'strMeal': "Pizza Hut",
      'strCategory': 'Pizza'
    },
    {
      "strMealThumb": 'images/icons8-milkshake-64.png',
      'strMeal': "Milk Shake",
      'strCategory': 'Juice'
    },
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Tile 1",
      'strCategory': 'strCategory 1'
    },
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Tile 1",
      'strCategory': 'strCategory 1'
    },
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Tile 1",
      'strCategory': 'strCategory 1'
    },
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Tile 1",
      'strCategory': 'strCategory 1'
    },
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Tile 1",
      'strCategory': 'strCategory 1'
    },
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Tile 1",
      'strCategory': 'strCategory 1'
    },
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Tile 1",
      'strCategory': 'strCategory 1'
    }
  ];
  final _categories = [
    {
      'label': 'Pizza',
      'icon': 'images/icons8-pizza-48.png',
      'isSelected': true
    },
    {
      'label': 'Burgers',
      'icon': 'images/icons8-hamburger-48.png',
      'isSelected': false
    },
    {
      'label': 'Chinese',
      'icon': 'images/icons8-gyoza-48.png',
      'isSelected': false
    },
    {
      'label': 'Italian',
      'icon': 'images/icons8-spaghetti-48.png',
      'isSelected': false
    },

    {
      'label': 'Sushi',
      'icon': 'images/icons8-sushi-94.png',
      'isSelected': false
    },
    {
      'label': 'Mexican',
      'icon': 'images/icons8-sombrero-64.png',
      'isSelected': false
    },

    // 'Burgers',
    // 'Sushi',
    // 'Mexican',
    // 'Chinese',
    // 'Italian'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      drawer: DrawerPage(),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: GestureDetector(
                  onTap: () {
                    _scaffoldState.currentState?.openDrawer();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Good Morining, ",
                            style: kGreyMediumText,
                          ),
                          Text(
                            "Betsegaw",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19),
                          )
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.red[400],
                        radius: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
            TextField(
              // controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search for food items',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // _getFoodItems();
                  },
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.white,
                  ), //<-- SEE HERE
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 50,
                child: Consumer<CartModel>(builder: (context, cart, child) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cart.categories.length,
                    itemBuilder: (BuildContext context, int index) {
                      final choiceChip = cart.categories[index];
                      // var _selectedCategory = 'Pizza';
                      // return CustomChoiceChip(
                      //   image: _categories[index]["icon"],
                      //   text: _categories[index]["label"],
                      //   isSelected: _categories[index]["isSelected"],
                      // );
                      return GestureDetector(
                        onTap: () {
                          cart.changeChoiceChip(choiceChip);
                        },
                        child: CustomChoiceChip(
                          image: choiceChip.image,
                          text: choiceChip.label,
                          isSelected: choiceChip.isSelected,
                          // chipModel: choiceChip,
                        ),
                      );
                    },
                  );
                }),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _foodItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SearchResultPage.id);
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        //set border radius more than 50% of height and width to make circle
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: ListTile(
                          leading: SizedBox(
                            height: 300,
                            width: 100,
                            child: Image.asset(
                              _foodItems[index]['strMealThumb']!,
                              fit: BoxFit.fill,
                              // width: 100,
                              // height: 200,
                              // height: double.infinity,
                            ),
                          ),
                          // title: Text(_foodItems[index]['strMeal']!),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      "4.5",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                _foodItems[index]['strMeal']!,
                                style: kDarkMediumText,
                              )
                            ],
                          ),
                          subtitle: Text(
                            _foodItems[index]['strCategory']!,
                            style: kGreyMediumText,
                          ),
                        ),
                      ),
                      // child: ListTile(

                      // ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
