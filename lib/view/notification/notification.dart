import 'package:flutter/material.dart';
import 'package:janrealism/constants/colors.dart';
import 'package:janrealism/constants/text.dart';
import 'package:janrealism/constants/textfiled.dart';
import 'package:janrealism/controller/auth_controller.dart';

class notifications extends StatefulWidget {
  const notifications({super.key});

  @override
  State<notifications> createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(100))
                    //border: Border.all(color: MyColors.color2, width: 1),
                    ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  child: Image.network(
                    "https://pbs.twimg.com/profile_images/1765067352113381377/L8AJi0hq_400x400.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              text1("${AuthController.userName}"),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                width: 400,
                decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                    //border: Border.all(color: MyColors.color2, width: 1),
                    ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          text1("Followers"),
                          text1("80"),
                        ],
                      ),
                      Column(
                        children: [
                          text1("Posts"),
                          text1("13"),
                        ],
                      ),
                      Column(
                        children: [
                          text1("Downgrade"),
                          text1("1"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              tile(
                  "Need to find the address issues",
                  "of competitive exam aspirants: Sharad Pawar",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRON9FAt-yz7crgmRbfRlLA4jgDAtKRttx34MY3rqiwxA&s"),
              const SizedBox(
                height: 10,
              ),
              tile(
                  "KKR Won the IPL 2024",
                  "KKR, IPL champions in 2012 and 2014,",
                  "https://images.news18.com/ibnlive/uploads/2023/11/ipl_2024_live_updates-2023-11-a9b6336a8f392bf8b04374ba46914130.jpg?impolicy=website&width=640&height=480"),
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
      const Divider(
        color: MyColors.color2,
      )
    ],
  );
}
