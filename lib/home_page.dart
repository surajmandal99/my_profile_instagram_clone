import 'package:flutter/material.dart';
import 'package:my_profile_instagram_clone/pages/account.dart';
import 'package:my_profile_instagram_clone/pages/home.dart';
import 'package:my_profile_instagram_clone/pages/reels.dart';
import 'package:my_profile_instagram_clone/pages/search.dart';
import 'package:my_profile_instagram_clone/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigate around the button nav bar
  int _selectedIndex = 0;
  void _navigateBottonNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //diffrent pages to navigate to
  final List<Widget> _children = [
    UserHome(),
    const UserSearch(),
    const UserReels(),
    const UserShop(),
    const UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottonNavBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: "Reels"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}
