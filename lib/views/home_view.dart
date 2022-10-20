import 'package:flutter/material.dart';
import 'package:recipe_2/views/scroolbar_view/scroll_option_1.dart';
import 'package:recipe_2/views/scroolbar_view/search_view.dart';

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
    Text('4'),
    Text('5'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actionsIconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Icon(Icons.add_box_outlined),
          SizedBox(width: 15),
          Icon(Icons.message_outlined),
          SizedBox(width: 15),
        ],
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontSize: 29,
            color: Colors.black,
          ),
        ),
      ),
      body: bottomBarItems[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(
              Icons.home_outlined,
              size: 35,
            ),
            activeIcon: Icon(
              Icons.home,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            label: 'search',
            icon: Icon(
              Icons.search,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            label: 'video',
            icon: Icon(
              Icons.video_call_outlined,
              color: Colors.black,
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
