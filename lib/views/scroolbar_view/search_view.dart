import 'package:flutter/material.dart';
import 'package:recipe_2/constant/constants.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 40,
              width: mediaQuery.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Style.grey,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: ' Search',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Expanded(
              child: GridView.builder(
            //
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  height: mediaQuery.width / 3,
                  width: mediaQuery.width / 3,
                  decoration: const BoxDecoration(color: Colors.blue),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
