import 'package:flutter/material.dart';
import 'package:my_profile_instagram_clone/util/bubble_stories.dart';

import '../util/account_tab1.dart';
import '../util/account_tab2.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: (Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  //profile picture of the user
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),

                  //number of posts .followers ,following
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Text(
                            '2',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Text("Posts"),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            '210',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Text("Followers"),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            '499',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Text("Following"),
                        ],
                      ),
                    ],
                  )),
                ],
              ),
            ),

            //NAME AND BIO
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text(
                        'Suraj Mandal',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.0),
                        child: Text(
                          'Currenlty I am learning Flutter Frameworks and Exploring Some new Widgets 👨‍💻',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.zero,
                        child: Text(
                          "surajxuraj@gmail.com",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ])),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                        child: Text(
                      "Edit Profile",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                Container(
                  // alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(child: Icon(Icons.person_add_alt)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: const [
                  BubbleStories(text: "story 1"),
                  BubbleStories(text: "story 2"),
                  BubbleStories(text: "story 3"),
                ],
              ),
            ),

            //TABAR
            const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.grid_on_sharp),
              ),
              Tab(icon: Icon(Icons.perm_contact_cal))
            ]),
            Expanded(
                child: TabBarView(
              children: [
                AccountTab1(),
                AccountTab2(),
              ],
            ))
          ],
        )),
      ),
    );
  }
}
