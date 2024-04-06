import 'package:flutter/material.dart';
import 'package:janrealism/constants/colors.dart';
import 'package:janrealism/constants/text.dart';
import 'package:janrealism/view/home/home.dart';
import 'package:janrealism/view/menu.dart';
import 'package:janrealism/view/notification/notification.dart';
import 'package:janrealism/view/post/post.dart';
import 'package:janrealism/view/trending/tending.dart';

class const_screen extends StatefulWidget {
  const const_screen({super.key});

  @override
  State<const_screen> createState() => _const_screenState();
}

class _const_screenState extends State<const_screen> {
  @override
  List<dynamic> iconList = [
    const Icon(Icons.home_max_rounded),
    const Icon(Icons.trending_down),
    const Icon(Icons.family_restroom_rounded),
    const Icon(Icons.menu),
  ];

  final pages = [
    const home(),
    const trending(),
    const post(),
    const notifications(),
    const menu(),
  ];

  int _bottomNavIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
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
        body: IndexedStack(
          index: _bottomNavIndex,
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_max_rounded,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                label: "Trending",
                icon: Icon(Icons.trending_up_rounded),
              ),
              BottomNavigationBarItem(
                label: "Post",
                icon: Icon(
                  size: 40,
                  Icons.add_circle,
                  color: MyColors.color2,
                ),
              ),
              BottomNavigationBarItem(
                label: "followers",
                icon: Icon(Icons.family_restroom_rounded),
              ),
              BottomNavigationBarItem(
                label: "Menu",
                icon: Icon(Icons.menu),
              ),
            ],
            currentIndex: _bottomNavIndex,
            selectedItemColor: MyColors.color2,
            unselectedFontSize: 15,
            unselectedItemColor: Colors.black38,
            iconSize: 30,
            selectedFontSize: 15,
            onTap: _onItemTapped,
            elevation: 5));
  }
}
