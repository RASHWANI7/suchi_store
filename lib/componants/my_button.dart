import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shuchi_store/color/color.dart';

class My_Button extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const My_Button({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: secondrycolor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    text,
                    style: GoogleFonts.dmSerifDisplay(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 25,
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
