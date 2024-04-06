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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                tabtile("Add Heading"),
                SizedBox(
                  width: 5,
                ),
                tabtile("Add Artical"),
                SizedBox(
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
          Icons.post_add,
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
    decoration: BoxDecoration(
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
