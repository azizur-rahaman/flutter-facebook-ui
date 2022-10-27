import 'package:facebook/models/notifications_model.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Notifications',
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
        Expanded(
          child: ListView.builder(
              itemCount: notificationData.length,
              itemBuilder: (BuildContext context, int i) {
                return Column(children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: NetworkImage(
                        notificationData[i].avatar,
                      ),
                    ),
                    title: Text(
                      notificationData[i].name,
                      style: const TextStyle(fontSize: 20),
                    ),
                    subtitle: Text(notificationData[i].description),
                    trailing: IconButton(
                        tooltip: 'More settings',
                        onPressed: () {
                          debugPrint('Notification More info clicked');
                        },
                        icon: const Icon(Icons.more_vert_outlined)),
                  ),
                ]);
              }),
        ),
      ],
    );
  }
}
