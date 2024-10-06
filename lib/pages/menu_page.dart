import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shuchi_store/color/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shuchi_store/componants/my_button.dart';
import '../componants/food_tile.dart';
import '../componants/text_field.dart';
import 'food_Details.dart';
import 'package:shuchi_store/model/shop.dart';

class Menu_Page extends StatefulWidget {
  const Menu_Page({super.key});

  @override
  State<Menu_Page> createState() => _Menu_PageState();
}

class _Menu_PageState extends State<Menu_Page> {
  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMunu;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          foregroundColor: Colors.grey[900],
          elevation: 2,
          backgroundColor: Colors.transparent,
          leading: const Icon(
            Icons.menu,
            size: 28,
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 95.0),
            child: Text(
              'TOKYO',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey[900]),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'cartpage');
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  size: 28,
                ))
          ],
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 170,
                width: 390,
                decoration: BoxDecoration(
                    color: primarycolor,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 30, right: 20),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Get 37% Promo',
                            style: GoogleFonts.dmSerifDisplay(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: My_Button(text: 'Redeem', onTap: () {}),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'lib/images/food (2).png',
                        height: 130,
                      ),
                    ],
                  ),
                ),
              ),
              text_field(),
              SizedBox(
                height: 15,
              ),
              Text(
                'Food Menu',
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: foodMenu.length,
                      itemBuilder: (context, index) => FoodTile(
                            food: foodMenu[index],
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Food_Details(
                                            food: foodMenu[index],
                                          )));
                            },
                          )))
            ],
          ),
        ),
      ),
    );
  }
}
