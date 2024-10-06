import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shuchi_store/color/color.dart';
import 'package:shuchi_store/componants/my_button.dart';

import '../model/food.dart';
import '../model/shop.dart';

class Cart_Page extends StatelessWidget {
  const Cart_Page({super.key});

  void removeFromCard(Food food, BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
        builder: (context, value, index) => Scaffold(
              backgroundColor: primarycolor,
              appBar: AppBar(
                elevation: 0,
                backgroundColor: primarycolor,
                title: Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child: Text(
                    'My Cart',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.grey[900],
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: value.card.length,
                        itemBuilder: (context, index) {
                          final Food food = value.card[index];
                          final String foodImage = food.image_of_the_food;
                          final String foodName = food.name_of_the_food;
                          final String foodPrice = food.price_of_the_food;
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: secondrycolor,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  foodImage,
                                  height: 64,
                                ),
                                title: Text(foodName,
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[100])),
                                subtitle: Text(
                                  foodPrice,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                trailing: IconButton(
                                  onPressed: () {
                                    final shop = context.read<Shop>();
                                    shop.removeFromCard(food);
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                    size: 25,
                                  ),
                                  color: Colors.grey[300],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: My_Button(text: 'Pay Now', onTap: () {}),
                  )
                ],
              ),
            ));
  }
}
