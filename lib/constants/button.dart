import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janrealism/constants/colors.dart';

Widget button(String text) {
  return Container(
    height: 60,
    width: 400,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: MyColors.color2),
    child: Center(
      child: Text(
        text,
        style: GoogleFonts.poppins(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
      ),
    ),
  );
}
