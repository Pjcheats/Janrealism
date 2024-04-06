import 'package:flutter/material.dart';
import 'package:janrealism/constants/colors.dart';
import 'package:janrealism/constants/text.dart';
import 'package:janrealism/view/post_details/details.dart';
import 'package:page_transition/page_transition.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, position) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: const details()));
              },
              child: tile("KKR Won the IPL 2024",
                  "KKR, IPL champions in 2012 and 2014,"),
            );
          },
        ),
      ),
    );
  }
}

Widget tile(
  String text6,
  String text5,
) {
  return Column(
    children: [
      Container(
        height: 270,
        width: 400,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(6))
            //border: Border.all(color: MyColors.color2, width: 1),
            ),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(100))
                          //border: Border.all(color: MyColors.color2, width: 1),
                          ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 6,
                        ),
                        text1(text6),
                        text2(text5),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  width: 350,
                  decoration: const BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(6))
                      //border: Border.all(color: MyColors.color2, width: 1),
                      ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 6,
                    ),
                    text1(text6),
                    text2(text5),
                  ],
                )
              ],
            )),
      ),
      Divider(
        color: MyColors.color2,
      )
    ],
  );
}
