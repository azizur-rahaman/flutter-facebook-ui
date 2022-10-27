import 'package:flutter/material.dart';

class PostBar extends StatefulWidget {
  const PostBar({super.key});

  @override
  State<PostBar> createState() => _PostBarState();
}

class _PostBarState extends State<PostBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  iconSize: 50,
                  onPressed: () {
                    return debugPrint("object");
                  },
                  icon: const CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('images/profile.webp'))),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "What's on your mind ?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  )),
              const SizedBox(
                  height: 60, child: VerticalDivider(color: Colors.black26)),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.photo_album_outlined)),
                  const Text('Photo'),
                ],
              ),
            ],
          ),
          const Divider(thickness: 1, color: Colors.black12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: Row(children: const [
                  Icon(Icons.post_add_outlined),
                  Text(' Text',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ]),
              ),
              const SizedBox(
                height: 40,
                child: VerticalDivider(color: Colors.black26),
              ),
              TextButton(
                  onPressed: () {},
                  child: Row(children: const [
                    Icon(
                      Icons.video_call,
                      color: Colors.red,
                    ),
                    Text(' Live Video',
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ])),
              const SizedBox(
                height: 40,
                child: VerticalDivider(color: Colors.black26),
              ),
              TextButton(
                onPressed: () {},
                child: Row(children: const [
                  Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  Text(' Location',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
