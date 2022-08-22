import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class AccountTab2 extends StatelessWidget {
  // const AccountTab1({Key? key}) : super(key: key);
  final List<String> userPosts = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 8,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            color: Colors.blue[100],
          ),
        );
      },
    );
  }
}
