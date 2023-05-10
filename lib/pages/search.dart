import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/pages/description.dart';
import 'package:food_delivery/pages/homePage.dart';
import 'package:provider/provider.dart';
import '../widgets/container_button.dart';
import '../constants/text_constants.dart';
import '../models/cart_model.dart';
import './cart.dart';

class SearchResultPage extends StatelessWidget {
  static const id = 'search_result_page';
  final List<Food> _foods = [
    Food(
      title: 'Dominos Pizza',
      price: 8,
      image: 'images/pizza.png',
      subTitle: 'Pizza-1',
      rating: '4.5',
      amount: 1,
      isFavorite: false,
    ),
    Food(
      title: 'Dominos Pizza',
      price: 9,
      image: 'images/pizza.png',
      subTitle: 'Pizza-2',
      rating: '3.5',
      amount: 1,
      isFavorite: false,
    ),
    Food(
      title: 'Dominos Pizza',
      price: 6,
      image: 'images/pizza.png',
      subTitle: 'Pizza-3',
      rating: '2.5',
      amount: 1,
      isFavorite: false,
    ),
    Food(
      title: 'Dominos Pizza',
      price: 7,
      image: 'images/pizza.png',
      subTitle: 'Pizza-4',
      rating: '1.5',
      amount: 1,
      isFavorite: false,
    ),
  ];
  final _foodItems = [
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Dominos Pizza",
      'strCategory': 'Pizza'
    },
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Pizza Hut",
      'strCategory': 'Pizza'
    },
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Milk Shake",
      'strCategory': 'Juice'
    },
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Dominos Pizza",
      'strCategory': 'Pizza'
    },
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Pizza Hut",
      'strCategory': 'Pizza'
    },
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Milk Shake",
      'strCategory': 'Juice'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 20, top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          // width: 100,
          // color: Colors.white,
          child: BackButton(
            onPressed: () {
              Navigator.pushNamed(context, HomePage.id);
            },
            color: Colors.black,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20, top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {
                // Do something when the icon button is pressed
                Navigator.pushNamed(context, CartPage.id);
              },
            ),
          ),
        ],
        // title: Text(""),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Choose what you",
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey,
              ),
            ),
            Text(
              "want to eat today",
              style: kDarkMediumText,
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 15),
              child: TextField(
                // controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search for food items',
                  labelText: "Donimos Pizza",
                  labelStyle: kDarkMediumText,
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Image.asset(
                    "images/icons8-domino-64.png",
                    scale: 2,
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
            ),
            Expanded(
              child: Consumer<CartModel>(builder: (context, cart, child) {
                return ListView.builder(
                  itemCount: _foods.length,
                  itemBuilder: (BuildContext context, int index) {
                    final food = _foods[index];
                    return GestureDetector(
                      onTap: () {
                        cart.foodDetail(food);
                        Navigator.pushNamed(context, DescriptionPage.id);
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
                                food.image,
                                alignment: Alignment.center,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            food.rating,
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          )
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          cart.changeFaorite(food);
                                        },
                                        child: Icon(
                                          Icons.favorite,
                                          color: food.isFavorite
                                              ? Colors.red
                                              : null,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  food.title,
                                  style: kDarkMediumText,
                                ),
                                Text(
                                  food.subTitle,
                                  style: kGreyMediumText,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$${food.price}',
                                      style: kBoldPriceText,
                                    ),
                                    ContainerButton(
                                      color: Colors.red[400],
                                      child: IconButton(
                                          color: Colors.white,
                                          onPressed: () {
                                            cart.addFood(food);
                                          },
                                          icon: Icon(Icons.add)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        // child: ListTile(

                        // ),
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class listview extends StatelessWidget {
  const listview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            //set border radius more than 50% of height and width to make circle
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Container(
                  // color: Colors.red,
                  // width: 100,
                  // height: 200,
                  child: Image.asset(
                "images/pizza.png",
                height: 200,
                // fit: BoxFit.fitWidth,
                // height: double.maxFinite,
              )),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("4.5"),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          )
                        ],
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    ],
                  ),
                  Text(
                    "Papperoni Pizza",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Moxed Pizza",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$8.50",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        // color: Colors.red,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red),
                        child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(Icons.add)),
                      )
                    ],
                  ),
                ],
              ),
              // trailing: Icon(Icons.more_vert),
            ),
          ),
        )
      ],
    );
  }
}
