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
          child: SingleChildScrollView(
            child: Column(
              children: [
                tile(
                  "KKR Won the IPL 2024",
                  "KKR, IPL champions in 2012 and 2014,",
                  "https://images.news18.com/ibnlive/uploads/2023/11/ipl_2024_live_updates-2023-11-a9b6336a8f392bf8b04374ba46914130.jpg?impolicy=website&width=640&height=480",
                ),
                tile(
                    "Russia evacuates 4,000 people ",
                    "dam bursts, floods near Kazakh border",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV6XWZiECAU-2ZzFKl-xtnr7e1Mge5JXXRppBw6qy5Sw&s"),
                tile(
                    "Need to find the address issues",
                    "of competitive exam aspirants: Sharad Pawar",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRON9FAt-yz7crgmRbfRlLA4jgDAtKRttx34MY3rqiwxA&s"),
                tile("Rohit Sharma To Leave ", "Mumbai Indians After IPL 2024,",
                    "https://news24online.com/wp-content/uploads/2024/04/Rohit-Sharma-1.jpg"),
                tile("accused number one ", "From Madam Speaker,",
                    "https://cdn.24.co.za/files/Cms/General/d/10527/681ac0728c7f49ddade3fb1407028d48.jpg"),
                tile("Rahul Gandhi slams", "ED as 'Extortion Directorate",
                    "https://static.toiimg.com/thumb/msid-109093415,imgsize-1086371,width-400,resizemode-4/109093415.jpg"),
                tile(
                    "What India needs to do ",
                    "to beat China in the great chip game",
                    "https://static.toiimg.com/thumb/width-800,height-450,imgsize-85282,msid-109093529/109093529.jpg"),
                tile(
                    "A 55-year-old woman paraded ",
                    "semi-naked after her son married",
                    "https://www.hindustantimes.com/ht-img/img/2024/04/06/550x309/GKfOS3YbAAARB1K_1712423161011_1712423172863.jpeg"),
                tile(
                  "IPL 2024 money trap",
                  " IPL in 2012 and 2014,",
                  "https://images.news18.com/ibnlive/uploads/2023/11/ipl_2024_live_updates-2023-11-a9b6336a8f392bf8b04374ba46914130.jpg?impolicy=website&width=640&height=480",
                ),
                tile(
                    "Congress to form govt in ",
                    "hhattisgarh, Rajasthan, Telangana;",
                    "https://www.livemint.com/lm-img/img/2023/11/30/600x338/News_24_1701356249147_1701356260611.jpg")
              ],
            ),
          )),
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    child: Image.network(
                      img,
                      fit: BoxFit.cover,
                    ),
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
