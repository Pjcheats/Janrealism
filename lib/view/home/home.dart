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
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Ink(
                child: tile(
                    "KKR Won the IPL 2024",
                    "KKR, IPL champions in 2012 and 2014,",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKZg4mRksYG1rtqUxLTmDv0vvqtxCN9pAEpmqNwQmgSw&s"),
              ),
              tile(
                  "125 years after Haryana farmer  1.6 ",
                  " acres  for Rs 90 get back to family",
                  "https://images.indianexpress.com/2024/04/farmersss.jpg?w=210"),
              tile(
                  "Need to find the address issues",
                  "of competitive exam aspirants: Sharad Pawar",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRON9FAt-yz7crgmRbfRlLA4jgDAtKRttx34MY3rqiwxA&s"),
              tile(
                  "Russia evacuates 4,000 people ",
                  "dam bursts, floods near Kazakh border",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV6XWZiECAU-2ZzFKl-xtnr7e1Mge5JXXRppBw6qy5Sw&s"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget tile(
  String text6,
  String text5,
  String img,
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
                const SizedBox(
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
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                        child: Image.network(
                          "https://pbs.twimg.com/profile_images/1765067352113381377/L8AJi0hq_400x400.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 6,
                        ),
                        text1(text6),
                        text2(text5),
                      ],
                    )
                  ],
                ),
                const SizedBox(
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
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    child: Image.network(
                      img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 6,
                    ),
                    text1(text6),
                    text2(text5),
                  ],
                )
              ],
            )),
      ),
      const Divider(color: Colors.black12)
    ],
  );
}
