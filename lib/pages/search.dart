import 'package:flutter/material.dart';

import '../util/explore_grid..dart';

class UserSearch extends StatelessWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey[300],
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[600],
                ),
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
          ),
        ),
      ),
      body: const ExploreGrid(),
    );
  }
}
