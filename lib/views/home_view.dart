import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:recipe_2/views/scroolbar_view/notification_view.dart';
import 'package:recipe_2/views/scroolbar_view/scroll_option_1.dart';
import 'package:recipe_2/views/scroolbar_view/search_view.dart';
import 'package:unicons/unicons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var index = 0;
  List<Widget> bottomBarItems = [
    const HomeView(),
    const SearchView(),
    Text('3'),
    const NotificationView(),
    Text('5'),
  ];
  @override
  Widget build(BuildContext context) {
    Color blackColor = Colors.black;

    return Scaffold(
      body: bottomBarItems[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: blackColor,
        unselectedItemColor: blackColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: index,
        elevation: 10,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(
              FeatherIcons.home,
              size: 30,
            ),
            activeIcon: Icon(
              Icons.home_filled,
              color: Colors.black,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: 'search',
            icon: Icon(
              UniconsLine.search,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: 'video',
            icon: Icon(
              UniconsLine.video,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
              label: 'like',
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 35,
              ),
              activeIcon: Icon(
                Icons.favorite,
                size: 35,
              )),
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(
              Icons.circle_outlined,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
