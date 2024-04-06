import 'package:flutter/material.dart';
import 'package:janrealism/constants/colors.dart';
import 'package:janrealism/constants/text.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 120, child: Image.asset("assets/logo.jpg")),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        size: 20,
                        Icons.search,
                        color: MyColors.color2,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      text1("Search"),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    color: MyColors.color2,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 300,
                    child: text1(
                      "Monarch population soars 4,900 percent since last year in a two three thrilling 2021 western migration years",
                    ),
                  ),
                  const Icon(
                    Icons.save,
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 220,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                // child: ClipRRect(
                //   borderRadius: BorderRadius.circular(10),
                //   child: Image.network("", fit: BoxFit.cover),
                // ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text2("1m ago"),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(100)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      text2("By Andy Corbley"),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              text1(
                "When just 200 Western monarch butterflies arrived in the Pismo Beach Butterfly Grove from their northerly migration last year, park rangers feared the treasured insect would soon be gone forever.This year, however, volunteers tallied their numbers at over 100,000, a spectacular swarm of hope that traveled down from as far north as Canada to the spend the winter on the California coast.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
