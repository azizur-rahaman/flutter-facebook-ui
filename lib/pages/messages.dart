import 'package:facebook/models/friends_model.dart';
import 'package:facebook/models/message_model.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Messsages',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Wrap(
                    spacing: 7,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 222, 223, 222),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                            color: Colors.black,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {},
                            icon: const Icon(Icons.settings)),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 222, 223, 222),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                            color: Colors.black,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {},
                            icon: const Icon(Icons.search)),
                      )
                    ],
                  )
                ])),
        const Divider(thickness: 1, color: Color.fromARGB(96, 209, 209, 209)),
        Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 10,
                children: [
                  for (var i = 0; i < 10; i++) ...[
                    GestureDetector(
                      onTap: () {
                        debugPrint('${i + 1}');
                      },
                      child: Stack(
                        children: [
                          // image height should be greater than the size
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1496440737103-cd596325d314?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
                          ),
                          Positioned(
                              right: 0,
                              bottom: 1,
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.circle,
                                  size: 15,
                                  color: Colors.green,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ]
                ],
              ),
            )),
        Expanded(
          child: ListView.builder(
              itemCount: friendsData.length,
              itemBuilder: (BuildContext context, int i) {
                return Column(children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: NetworkImage(
                        friendsData[i].avatar,
                      ),
                    ),
                    title: Text(
                      friendsData[i].name,
                      style: const TextStyle(fontSize: 20),
                    ),
                    subtitle: const Text('Hi'),
                  )
                ]);
              }),
        ),
      ],
    );
  }
}
