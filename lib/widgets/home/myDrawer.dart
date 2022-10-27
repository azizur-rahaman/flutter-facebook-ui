import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: double.infinity,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                child: DrawerHeader(
                    child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back)),
                const Text('Menu',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    )),
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
                        icon: const Icon(Icons.search))),
              ],
            ))),
            Expanded(
                child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1626452258360-03b0148a8386?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')),
                  title: Text('Azizur Rahaman'),
                  subtitle: Text('This is sub'),
                ),
              ],
            ))
          ]),
    );
  }
}
