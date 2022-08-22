import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ShopGrid extends StatelessWidget {
  final List<String> userPosts = [];
  // const ShopGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(color: Colors.pink[100]),
          );
        });
  }
}
