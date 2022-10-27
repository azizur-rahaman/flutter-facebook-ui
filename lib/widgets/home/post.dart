import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
                iconSize: 50,
                onPressed: () {},
                icon: const CircleAvatar(
                  backgroundImage: AssetImage('images/profile.webp'),
                )),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Rabi',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  Wrap(
                    spacing: 15,
                    children: const [
                      Text('12 min ago',
                          style: TextStyle(fontSize: 18, color: Colors.grey)),
                      Icon(Icons.public),
                    ],
                  )
                ],
              ),
            ),
            IconButton(
                iconSize: 30,
                onPressed: () {},
                icon: const Icon(Icons.more_horiz_outlined))
          ],
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(fontSize: 20, color: Colors.black)),
          ),
          Image.network(
              'https://images.unsplash.com/photo-1662047919286-19175909fbcc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5, bottom: 5),
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color.fromARGB(255, 221, 220, 218)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up_alt_outlined),
                ),
                const Text('12', style: TextStyle(fontSize: 18)),
              ]),
            ),
            //Comment
            Container(
              margin: const EdgeInsets.only(top: 5, bottom: 5),
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color.fromARGB(255, 221, 220, 218)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.comment_outlined),
                ),
                const Text('12', style: TextStyle(fontSize: 18)),
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5, bottom: 5),
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color.fromARGB(255, 221, 220, 218)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share_outlined),
                ),
                const Text('1', style: TextStyle(fontSize: 18)),
              ]),
            ),
          ],
        )
      ],
    );
  }
}
