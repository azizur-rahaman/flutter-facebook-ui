import 'package:facebook/widgets/home/post.dart';
import 'package:facebook/widgets/home/postBar.dart';
import 'package:facebook/widgets/home/storyBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0x00c9ccd1),
      margin: const EdgeInsets.only(top: 8),
      child: ListView(
        children: const [
          PostBar(),
          Divider(thickness: 9, color: Colors.black12),
          StoryBar(),
          Divider(thickness: 9, color: Colors.black12),
          Post(),
        ],
      ),
    );
  }
}
