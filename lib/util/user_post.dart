import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  // ignore: use_key_in_widget_constructors
  const UserPosts({required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  //name
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.menu)
            ],
          ),
        ),

        //POST
        Container(
          height: 400,
          color: Colors.grey,
        ),

        //BELOW THERE SHOULD BE THE POST :BUTTONS AND COMMENTS
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              const Icon(Icons.bookmark)
            ],
          ),
        ),

        //LIKED BY

        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: const [
              Text('Liked by '),
              Text(
                'Sandy ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('and '),
              Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        //CAPTIONS

        Padding(
          padding: const EdgeInsets.only(left: 16, top: 5),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: [
                TextSpan(
                    text: name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(
                    text:
                        " Wish we can turn back the time through the old good days"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
