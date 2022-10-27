import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class VideosView extends StatefulWidget {
  const VideosView({super.key});

  @override
  State<VideosView> createState() => _VideosViewState();
}

class _VideosViewState extends State<VideosView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              children: const [
                Text(
                  'Reels',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                  ),
                ),
                Spacer(),
                Icon(
                  FeatherIcons.camera,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: MediaQuery.of(context).size.height - 250,
            color: Colors.white,
            child: const Center(
              child: Text('Videos should be here'),
            ),
          )
        ],
      ),
    );
  }
}
