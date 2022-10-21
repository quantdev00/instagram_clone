import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:recipe_2/widget_to_use/stories_icon.dart';
import 'package:unicons/unicons.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actionsIconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontSize: 29,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(Icons.add_box_outlined),
          SizedBox(width: 15),
          Icon(UniconsLine.facebook_messenger_alt),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => profileColumn(
                  verticalPadding: 8.0,
                  horizontalPadding: 5.0,
                  storieBorderRadius: 3,
                  storieSizeRadius: 35,
                  userNames: 'userNames',
                  userNamesFontSize: 10,
                ),
              ),
            ),
          ),

          const SizedBox(height: 5),
          const Divider(color: Color.fromRGBO(158, 158, 158, 1)),
          //*Label names and menue here
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: mediaQuery.width / 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    userProfile,
                    InkWell(
                      child: Icon(FeatherIcons.moreVertical),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 7),
              //*Container post start here
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
                      Icons.favorite,
                      color: Colors.red,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Icon(FeatherIcons.messageCircle),
                    SizedBox(width: 10),
                    Icon(
                      FeatherIcons.send,
                      size: 25,
                    ),
                    Spacer(),
                    Icon(
                      FeatherIcons.bookmark,
                      size: 30,
                    ),
                  ],
                ),
              ),
              //*Footer Likes and comments
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
      ),
    );
  }
}
