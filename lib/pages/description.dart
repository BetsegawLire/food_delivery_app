import 'package:flutter/material.dart';
import 'package:food_delivery/pages/cart.dart';
import 'package:food_delivery/pages/search.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';
import '../widgets/container_button.dart';
import '../constants/text_constants.dart';

class DescriptionPage extends StatelessWidget {
  static const id = 'description_page';

  final _options = ["s", "m", "l"];
  // List<String> _options = ['Option 1', 'Option 2', 'Option 3'];
  String _selectedOption = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 20, top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          // width: 100,
          // color: Colors.white,
          child: BackButton(
            onPressed: () {
              // Navigator.pushNamed(context, SearchResultPage.id);
              Navigator.pop(context);
            },
            color: Colors.black,
          ),
        ),
        title: Container(
          margin: EdgeInsets.only(top: 20),
          child: Center(
            child: Text(
              'Donimos Pizza',
              textAlign: TextAlign.center,
              style: kDarkMediumText,
            ),
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
        padding: const EdgeInsets.all(20.0),
        child: Consumer<CartModel>(
          builder: (context, cart, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Text(
                      "element-1, element-2, element-3, element-4",
                      style: kGreyMediumText,
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                '\$${cart.food.price}',
                                style: kBoldPriceText,
                              )),
                          // Text("data"),
                          // Text("data"),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    "Calories",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    "750 Calories",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    "Weight",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    "450 gr",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    "Delivery",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    "45 min",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 10),
                            child: Row(
                              children: [
                                // Text("1"),
                                // Container(
                                //   height: 40,
                                //   width: 40,
                                //   // color: Colors.red,
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(10),
                                //       color: Colors.red),
                                //   child: Center(
                                //     child: Text(
                                //       "S",
                                //       style: TextStyle(
                                //         color: Colors.white,
                                //         fontSize: 18,
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                ContainerButton(
                                  color: Colors.red,
                                  child: Center(
                                    child: Text(
                                      "S",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                // Container(
                                //   height: 40,
                                //   width: 40,
                                //   // color: Colors.red,
                                //   decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(10),
                                //     color: Colors.grey[200],
                                //   ),
                                //   child: Center(
                                //     child: Text(
                                //       "M",
                                //       style: TextStyle(
                                //         color: Colors.black,
                                //         fontSize: 18,
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                ContainerButton(
                                  color: Colors.grey[200],
                                  child: Center(
                                    child: Text(
                                      "M",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                // Container(
                                //   height: 40,
                                //   width: 40,
                                //   // color: Colors.red,
                                //   decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(10),
                                //     color: Colors.grey[200],
                                //   ),
                                //   child: Center(
                                //     child: Text(
                                //       "L",
                                //       style: TextStyle(
                                //         color: Colors.black,
                                //         fontSize: 18,
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                ContainerButton(
                                  color: Colors.grey[200],
                                  child: Center(
                                    child: Text(
                                      "L",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              // Text("1"),
                              // Container(
                              //   height: 40,
                              //   width: 40,
                              //   // color: Colors.red,
                              //   decoration: BoxDecoration(
                              //       borderRadius: BorderRadius.circular(10),
                              //       color: Colors.grey[200]),
                              //   child: IconButton(
                              //       color: Colors.black,
                              //       onPressed: () {},
                              //       icon: Icon(Icons.remove)),
                              // ),
                              ContainerButton(
                                color: Colors.grey[200],
                                child: IconButton(
                                    color: Colors.black,
                                    onPressed: () {
                                      cart.decrementAmount(cart.food);
                                    },
                                    icon: Icon(Icons.remove)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              // Container(
                              //   height: 40,
                              //   width: 40,
                              //   // color: Colors.red,
                              //   decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(10),
                              //     color: Colors.grey[200],
                              //   ),
                              //   child: Center(
                              //     child: Text(
                              //       "2",
                              //       style: TextStyle(
                              //         color: Colors.black,
                              //         fontSize: 18,
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              ContainerButton(
                                color: Colors.grey[200],
                                child: Center(
                                  child: Text(
                                    cart.food.amount.toString(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              // Container(
                              //   height: 40,
                              //   width: 40,
                              //   // color: Colors.red,
                              //   decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(10),
                              //     color: Colors.red[400],
                              //   ),
                              //   child: IconButton(
                              //       color: Colors.white,
                              //       onPressed: () {},
                              //       icon: Icon(Icons.add)),
                              // ),
                              ContainerButton(
                                color: Colors.red[400],
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      cart.incrementAmount(cart.food);
                                    },
                                    icon: Icon(Icons.add)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.red[400],
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  // Background color
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 10)),
                              onPressed: () {
                                cart.addFood(cart.food);
                                Navigator.pushNamed(context, CartPage.id);
                              },
                              child: Text(
                                "Add to cart",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        child: Image.asset(
                          cart.food.image,
                          fit: BoxFit.fitWidth,
                          width: 220,
                          // centerSlice: Rect.largest,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
