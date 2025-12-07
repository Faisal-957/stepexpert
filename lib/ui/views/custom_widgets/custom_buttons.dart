import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtons1 extends StatelessWidget {
  final String text;
  final String price;

  const CustomButtons1({super.key, required this.text, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.7626953125,
      width: 253.6759033203125,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            spreadRadius: 1.1,
            blurRadius: 4.0,
            color: Color(0xff000040).withValues(alpha: 0.3),
            // blurStyle: BlurStyle.solid,
            offset: Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffE12D59),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              price,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
