import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:recipe_2/constant/constants.dart';
import 'package:recipe_2/widget_to_use/stories_icon.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SafeArea(
        child: Drawer(
          child: Icon(Icons.abc_rounded),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        actionsIconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'username',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(Icons.add_box_outlined),
          SizedBox(width: 15),
          Icon(FeatherIcons.menu),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              profileRow(
                verticalPadding: 0,
                horizontalPadding: 5.0,
                storieBorderRadius: 2,
                storieSizeRadius: 35,
                userNames: '',
                userNamesFontSize: 12,
              ),
              Column(
                children: const [
                  Text(
                    '15',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text('Posts'),
                ],
              ),
              Column(
                children: const [
                  Text(
                    '255',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text('Followers'),
                ],
              ),
              Column(
                children: const [
                  Text(
                    '409',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text('Followings'),
                ],
              )
            ],
          ),
          const SizedBox(height: 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Daniel Ngolu Kiyiki',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              Text(
                """dan \nSome description about me!\nthanks for seeing my profile welcome\ncontact -> dan
                """,
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          ),
          //*Edit button
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Style.grey,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Center(child: Text('Edit profile')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}