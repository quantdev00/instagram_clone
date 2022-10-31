import 'package:flutter/material.dart';

class MyPhotos extends StatefulWidget {
  const MyPhotos({super.key});

  @override
  State<MyPhotos> createState() => _MyPhotosState();
}

class _MyPhotosState extends State<MyPhotos> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(1),
              child: Container(
                height: mediaQuery.width / 3 - 3,
                width: mediaQuery.width / 3 - 3,
                decoration: const BoxDecoration(color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Container(
                height: mediaQuery.width / 3 - 3,
                width: mediaQuery.width / 3 - 3,
                decoration: const BoxDecoration(color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Container(
                height: mediaQuery.width / 3 - 3,
                width: mediaQuery.width / 3 - 3,
                decoration: const BoxDecoration(color: Colors.blue),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
