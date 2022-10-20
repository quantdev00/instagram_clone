import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
        Text('Hello world'),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.vertical,
            itemBuilder: ((context, index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        height: mediaQuery.width / 3.1,
                        width: mediaQuery.width / 3.1,
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        height: mediaQuery.width / 3.1,
                        width: mediaQuery.width / 3.1,
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        height: mediaQuery.width / 3.1,
                        width: mediaQuery.width / 3.1,
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ],
    );
  }
}
