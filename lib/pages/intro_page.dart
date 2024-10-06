import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shuchi_store/color/color.dart';
import 'package:shuchi_store/componants/my_button.dart';

class Intro_Page extends StatelessWidget {
  const Intro_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: primarycolor,
          body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Suchi Man',
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30.0, left: 50, right: 50, bottom: 20),
                  child: Image.asset(
                    'lib/images/japan.png',
                    height: 300,
                  ),
                ),
                Text(
                  'THE TASTE OF THE JAPANESE FOOD',
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 70),
                  child: Text(
                    'feel the taste of the most popular japanese food from anywhere and anytime ',
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Center(
                    child: My_Button(
                        text: 'Get Started',
                        onTap: () {
                          Navigator.pushNamed(context, 'menupage');
                        })),
              ],
            ),
          )),
    );
  }
}
