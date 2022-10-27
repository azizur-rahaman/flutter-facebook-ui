import 'package:badges/badges.dart';
import 'package:facebook/pages/friends.dart';
import 'package:facebook/pages/home.dart';
import 'package:facebook/pages/marketplace.dart';
import 'package:facebook/pages/messages.dart';
import 'package:facebook/pages/notications.dart';
import 'package:facebook/pages/videos.dart';
import 'package:facebook/widgets/home/myDrawer.dart';
import 'package:flutter/material.dart';

class MainTab extends StatefulWidget {
  const MainTab({super.key});

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TabController? _tabController;

  final List<Tab> topTabs = <Tab>[
    const Tab(icon: Icon(Icons.home_outlined)),
    const Tab(icon: Icon(Icons.people_outline)),
    const Tab(icon: Icon(Icons.message_outlined)),
    const Tab(icon: Icon(Icons.shopping_bag_outlined)),
    Tab(
        icon: Badge(
            badgeContent: const Text(
              '3',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            child: const Icon(Icons.notifications_outlined))),
    const Tab(icon: Icon(Icons.video_library_outlined)),
  ];

  Future<bool> _onWillPop() async {
    debugPrint("On will pop");
    if (_tabController?.index == 0) {
    } else {
      Future.delayed(const Duration(milliseconds: 200), () {
        debugPrint('Set Index');
        _tabController?.index == 0;
      });
    }
    return _tabController?.index == 0;
  }

  @override
  void initState() {
    _tabController =
        TabController(length: topTabs.length, initialIndex: 0, vsync: this)
          ..addListener(() {
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'facebook',
            style: TextStyle(
                fontFamily: 'KlavikaBold', fontSize: 30, color: Colors.blue),
          ),
          actions: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black26,
              ),
              child: IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black26,
              ),
              child: IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    return _scaffoldKey.currentState!.openEndDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  )),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: topTabs,
            indicatorColor: Colors.black,
          ),
        ),
        endDrawer: const MyDrawer(),
        body: TabBarView(controller: _tabController, children: const [
          HomePage(),
          FriendsPage(),
          MessagesPage(),
          MarketplacePage(),
          NotificationsPage(),
          VideosPage(),
        ]),
      ),
    );
  }
}
