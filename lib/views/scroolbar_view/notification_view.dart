import 'package:flutter/cupertino.dart';
import 'package:recipe_2/widget_to_use/stories_icon.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        itemBuilder: ((context, index) => Column(
              children: [
                Row(
                  children: [
                    profileRow(
                      verticalPadding: 0,
                      horizontalPadding: 5.0,
                      storieBorderRadius: 2,
                      storieSizeRadius: 26,
                      userNames: 'username',
                      userNamesFontSize: 12,
                    ),
                    const SizedBox(width: 5),
                    const Text('notification details'),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            )),
      ),
    );
  }
}
