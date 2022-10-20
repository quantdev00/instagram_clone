import 'package:flutter/material.dart';

import 'package:recipe_2/widget_to_use/stories_icon.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                storie,
                storie,
                storie,
                storie,
                storie,
                storie,
                storie,
                storie,
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mediaQuery.width / 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  userProfile,
                  const InkWell(
                    child: Icon(
                      Icons.menu_sharp,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: mediaQuery.width,
              color: Colors.blue,
              child: const Center(
                child: Text('Image shoud be here'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.favorite_border_outlined,
                    size: 30,
                  ),
                  SizedBox(width: 7),
                  Icon(
                    Icons.comment_outlined,
                    size: 30,
                  ),
                  SizedBox(width: 7),
                  Icon(
                    Icons.send_outlined,
                    size: 30,
                  ),
                  Spacer(),
                  Icon(
                    Icons.save_alt,
                    size: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '122 likes',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('see all comments'),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
