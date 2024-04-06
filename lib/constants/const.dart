import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:janrealism/constants/colors.dart';
import 'package:janrealism/constants/text.dart';
import 'package:janrealism/view/home/home.dart';
import 'package:janrealism/view/menu.dart';
import 'package:janrealism/view/notification/notification.dart';
import 'package:janrealism/view/post/post.dart';
import 'package:janrealism/view/trending/tending.dart';
import 'package:page_transition/page_transition.dart';

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
    const notifications(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.fade, child: const post()));
        },
        backgroundColor: MyColors.color2,
        child: const Icon(
          Icons.post_add,
          color: Colors.white,
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: GNav(
            rippleColor: MyColors.color2,
            hoverColor: MyColors.color2,
            gap: 10,
            activeColor: Colors.white,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: MyColors.color2,
            color: Colors.black,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.trending_up,
                text: 'Trending',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
            backgroundColor: Colors.white,
            haptic: true,
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
