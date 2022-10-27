import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:recipe_2/views/scroolbar_view/notification_view.dart';
import 'package:recipe_2/views/scroolbar_view/profile_view.dart';
import 'package:recipe_2/views/scroolbar_view/scroll_option_1.dart';
import 'package:recipe_2/views/scroolbar_view/search_view.dart';
import 'package:recipe_2/views/scroolbar_view/video_view.dart';
import 'package:unicons/unicons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color blackColor = Colors.black;
  Color myBackgroundColor = Colors.white;

  var index = 0;
  List<Widget> bottomBarItems = [
    const HomeView(),
    const SearchView(),
    const VideosView(),
    const NotificationView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomBarItems[index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: blackColor,
        unselectedItemColor: blackColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: index,
        elevation: 10,
        onTap: (value) {
          setState(() {
            index = value;
            if (index == 2) {
              blackColor = Colors.white;
              // myBackgroundColor = Colors.black;
            } else {
              blackColor = Colors.black;
              // myBackgroundColor = Colors.white;
            }
          });

          setState(() {
            if (index != 2) {
              myBackgroundColor = Colors.white;
              log(index.toString());
            } else {
              log(index.toString());
              myBackgroundColor = Colors.black;
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: myBackgroundColor,
            label: 'home',
            icon: const Icon(
              FeatherIcons.home,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: myBackgroundColor,
            label: 'search',
            icon: const Icon(
              UniconsLine.search,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: myBackgroundColor,
            label: 'video',
            icon: const Icon(
              UniconsLine.video,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: myBackgroundColor,
            label: 'like',
            icon: const Icon(
              Icons.favorite_border_outlined,
              size: 35,
            ),
            activeIcon: const Icon(
              Icons.favorite,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: myBackgroundColor,
            label: 'home',
            icon: const Icon(
              Icons.circle_outlined,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
