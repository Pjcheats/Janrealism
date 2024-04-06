import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janrealism/constants/button.dart';
import 'package:janrealism/constants/colors.dart';
import 'package:janrealism/constants/const.dart';
import 'package:janrealism/constants/text.dart';
import 'package:janrealism/constants/textfiled.dart';
import 'package:page_transition/page_transition.dart';

class Jourenal_login extends StatefulWidget {
  const Jourenal_login({super.key});

  @override
  State<Jourenal_login> createState() => _Jourenal_loginState();
}

class _Jourenal_loginState extends State<Jourenal_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/bg.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
              child: Container(
            color: MyColors.color3,
          )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 40),
                    SizedBox(
                        height: 150, child: Image.asset("assets/logo.png")),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        text1("To Register give your Doc ID"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    textfielf("Doc ID"),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        text1("Here your user name.."),
                      ],
                    ),
                    const SizedBox(height: 10),
                    textfielf("Hidden User Name"),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: const_screen()));
                        },
                        child: button("Generate keys")),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
