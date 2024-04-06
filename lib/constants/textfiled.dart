import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janrealism/constants/colors.dart';

Widget textfiel(String text) {
  return Container(
    height: 60,
    width: 400,
    decoration: const BoxDecoration(
      color: Colors.black12,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      //border: Border.all(color: MyColors.color2, width: 1.5),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: GoogleFonts.poppins(
            fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),
      ),
    ),
  );
}
