import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janrealism/constants/colors.dart';

Widget text1(String text) {
  return Text(
    text,
    overflow: TextOverflow.ellipsis,
    style: GoogleFonts.poppins(
        fontSize: 16, color: MyColors.color2, fontWeight: FontWeight.w500),
  );
}

Widget textve1(String text) {
  return Text(
    text,
    overflow: TextOverflow.ellipsis,
    style: GoogleFonts.poppins(
        fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
  );
}

Widget text0(String text) {
  return Text(
    text,
    overflow: TextOverflow.ellipsis,
    style: GoogleFonts.poppins(
        fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500),
  );
}

Widget text2(String text) {
  return Text(
    text,
    overflow: TextOverflow.ellipsis,
    style: GoogleFonts.poppins(
        fontSize: 12, color: Colors.black45, fontWeight: FontWeight.w500),
  );
}

Widget text3(String text) {
  return Text(
    text,
    overflow: TextOverflow.ellipsis,
    style: GoogleFonts.poppins(
        fontSize: 18, color: Colors.orange, fontWeight: FontWeight.bold),
  );
}
