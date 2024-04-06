import 'package:flutter/material.dart';
import 'package:janrealism/constants/colors.dart';
import 'package:janrealism/constants/text.dart';

class post extends StatefulWidget {
  const post({super.key});

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 120, child: Image.asset("assets/logo.png")),
            Row(
              children: [
                const Icon(
                  size: 25,
                  Icons.search,
                  color: MyColors.color2,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                tabtile("Add Heading"),
                const SizedBox(
                  width: 5,
                ),
                tabtile("Add Artical"),
                const SizedBox(
                  width: 5,
                ),
                tabtile("Add Media")
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: MyColors.color2,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

Widget tabtile(
  String text6,
) {
  return Container(
    height: 30,
    decoration: const BoxDecoration(
        color: MyColors.color2,
        borderRadius: BorderRadius.all(Radius.circular(6))
        //border: Border.all(color: MyColors.color2, width: 1),
        ),
    child: Center(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: text0(text6),
    )),
  );
}
