import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:janrealism/constants/colors.dart';
import 'package:janrealism/constants/text.dart';

class trending extends StatefulWidget {
  const trending({super.key});

  @override
  State<trending> createState() => _trendingState();
}

class _trendingState extends State<trending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, position) {
            return tile(
                "KKR Won the IPL 2024", "KKR, IPL champions in 2012 and 2014,");
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
        height: 60,
        width: 400,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(6))
            //border: Border.all(color: MyColors.color2, width: 1),
            ),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(6))
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
            )),
      ),
      Divider(
        color: MyColors.color2,
      )
    ],
  );
}
