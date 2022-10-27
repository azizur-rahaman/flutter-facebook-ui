import 'package:facebook/models/story_model.dart';
import 'package:flutter/material.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(spacing: 10, children: [
          Container(
            height: 255,
            width: 150,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(fit: StackFit.expand, children: [
              GestureDetector(
                onTap: () => debugPrint("Clikced"),
                child: Column(
                  children: [
                    Container(
                      height: 170,
                      width: 150,
                      margin: const EdgeInsets.only(bottom: 30),
                      child: const ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: Image(
                          image: AssetImage('images/profile.webp'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    TextButton(
                        onPressed: () {
                          debugPrint('Add story clicked');
                        },
                        child: const Text(
                          'Add to Story',
                          style: TextStyle(
                              fontFamily: 'KlavikaBold',
                              fontSize: 17,
                              color: Colors.black),
                        ))
                  ],
                ),
              ),
              Positioned(
                  bottom: 50,
                  left: 45,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle_rounded),
                    iconSize: 45,
                    color: Colors.blue,
                  )),
            ]),
          ),
//Friends Stories

          for (var i = 0; i < storyData.length; i++) ...[
            SizedBox(
                height: 250,
                width: 150,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    GestureDetector(
                        onTap: storyData[i].onTap,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: NetworkImage(storyData[i].image),
                              fit: BoxFit.cover,
                            ))),
                    Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text(
                          storyData[i].username,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        ))
                  ],
                )),
          ]
        ]),
      ),
    );
  }
}
