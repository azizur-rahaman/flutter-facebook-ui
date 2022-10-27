import 'package:facebook/models/friends_model.dart';
import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Friends',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Wrap(
                    spacing: 7,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 210, 250, 217),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                            color: Colors.green,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {},
                            icon: const Icon(Icons.person)),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 210, 250, 217),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                            color: Colors.red,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {},
                            icon: const Icon(Icons.people)),
                      )
                    ],
                  )
                ])),
        const Divider(thickness: 1, color: Colors.black38),
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
                      trailing: Wrap(
                        spacing: 12,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.blue,
                                primary: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )),
                            child: const Text('Add Friend'),
                          ),
                        ],
                      ),
                    )
                  ]);
                }))
      ],
    );
  }
}
