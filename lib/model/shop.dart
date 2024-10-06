import 'package:flutter/foundation.dart';
import 'package:shuchi_store/model/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
        name_of_the_food: 'Oreo',
        price_of_the_food: '2.00',
        image_of_the_food: 'lib/images/food.png',
        rate_of_the_food: '4.7',
        describe_of_the_food:
            'Japanese Oreo is a unique flavour that combines the famous Oreo cookie with rich vanilla cream. It comes in small balls covered in white chocolate, with a touch of green tea powder. A delicious and innovative experience that captivates the senses and leaves a wonderful impression.'),
    Food(
        name_of_the_food: 'Noodle',
        price_of_the_food: '5.00',
        image_of_the_food: 'lib/images/food (1).png',
        rate_of_the_food: '4.9',
        describe_of_the_food:
            'The Japanese restaurant offers a delicious udon noodle dish, with thick noodles cooked to perfection, immersed in a warm, flavorful broth. Garnished with fresh vegetables such as green onions and carrots, with grilled chicken pieces, and a sprinkle of toasted sesame seeds. An unforgettable experience!'),
    Food(
        name_of_the_food: 'Rice',
        price_of_the_food: '4.50',
        image_of_the_food: 'lib/images/food (2).png',
        rate_of_the_food: '4.8',
        describe_of_the_food:
            'Enjoy Japanese short grain rice, carefully cooked to a sticky and perfect consistency. Served with soy sauce and fresh herbs, it adds a rich and distinctive flavour. Perfect as a side dish or as a base for delicious sushi and onigiri dishes. An unforgettable experience!')
  ];

  final List<Food> _card = [];

  List<Food> get foodMunu => _foodMenu;
  List<Food> get card => _card;

  void addToCard(Food food, int quanity) {
    for (int i = 0; i < quanity; i++) {
      _card.add(food);
    }
    notifyListeners();
  }

  void removeFromCard(Food food) {
    _card.remove(food);
    notifyListeners();
  }
}
