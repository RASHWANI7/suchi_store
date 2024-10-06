import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shuchi_store/color/color.dart';
import 'package:shuchi_store/componants/my_button.dart';
import '../model/food.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shuchi_store/model/shop.dart';

class Food_Details extends StatefulWidget {
  final Food food;
  const Food_Details({super.key, required this.food});

  @override
  State<Food_Details> createState() => _Food_DetailsState();
}

class _Food_DetailsState extends State<Food_Details> {
  int count = 0;
  void increase_conut() {
    setState(() {
      count++;
    });
  }

  void decrease_conut() {
    setState(() {
      if (count > 0) count--;
    });
  }

  void addToCard() {
    if (count > 0) {
      final shop = context.read<Shop>();
      shop.addToCard(widget.food, count);
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => AlertDialog(
                backgroundColor: primarycolor,
                content: const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Succecfuly Added To Card ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.done,
                        size: 25,
                        color: Colors.black,
                      ))
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      widget.food.image_of_the_food,
                      height: 300,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.food.rate_of_the_food,
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    widget.food.name_of_the_food,
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    widget.food.describe_of_the_food,
                    style:
                        const TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: primarycolor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '\$ ' + widget.food.price_of_the_food,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: secondrycolor,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: IconButton(
                                  onPressed: decrease_conut,
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 35,
                                  )),
                            ),
                          ),
                          Text(
                            count.toString(),
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: secondrycolor,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: IconButton(
                                  onPressed: increase_conut,
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 35,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      My_Button(text: 'Add To Card', onTap: addToCard)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
