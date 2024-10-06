import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shuchi_store/pages/cart_page.dart';
import 'package:shuchi_store/pages/intro_page.dart';
import 'package:shuchi_store/pages/menu_page.dart';

import 'model/shop.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: My_App(),
  ));
}

class My_App extends StatelessWidget {
  const My_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Intro_Page(),
      routes: {
        'intropage': (context) => const Intro_Page(),
        'menupage': (context) => const Menu_Page(),
        'cartpage': (context) => const Cart_Page(),
      },
    );
  }
}
