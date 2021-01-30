import 'package:flutter/material.dart';
import 'package:newsio/models/User.dart';
import 'package:newsio/screens/home/drawr-components/news-page/NewsScreen.dart';
import 'package:newsio/screens/home/drawr-components/notice-board/notice-board.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'components/drawer_components.dart';
import 'drawr-components/ecm/ecm.dart';
import 'drawr-components/feeds/feeds.dart';
import 'drawr-components/settings/settings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final pageNo = [
    1,
    3,
    4,
    4,
    5,
  ];

  int currentPage;
  bool isDrawerOpen;
  @override
  void initState() {
    isDrawerOpen = false;
    currentPage = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    return SafeArea(
        child: Scaffold(
            key: _drawerKey,
            drawer: Drawer(
              child: Column(
                children: [
                  drawerHeader(),
                  drawerTile("News", () {
                    setState(() {
                      _drawerKey.currentState.openEndDrawer();
                      currentPage = 1;
                    });
                  }, context, Icon(Icons.pages)),
                  drawerTile("Feeds", () {
                    setState(() {
                      _drawerKey.currentState.openEndDrawer();
                      currentPage = 2;
                    });
                  }, context, Icon(Icons.timeline)),
                  drawerTile("Notice Board", () {
                    setState(() {
                      _drawerKey.currentState.openEndDrawer();
                      currentPage = 3;
                    });
                  }, context, Icon(Icons.add_alert)),
                  drawerTile("Ecm", () {
                    setState(() {
                      _drawerKey.currentState.openEndDrawer();
                      currentPage = 4;
                    });
                  }, context, Icon(Icons.school)),
                  drawerTile("Settings", () {
                    setState(() {
                      _drawerKey.currentState.openEndDrawer();
                      currentPage = 5;
                    });
                  }, context, Icon(Icons.settings)),
                  drawerTile("Logout", () {
                    user.setAuthToken(null);
                  }, context, Icon(Icons.logout))
                ],
              ),
            ),
            body: pageSelector(currentPage)));
  }

  Widget pageSelector(int pageNo) {
    switch (pageNo) {
      case 1:
        return NewsScreen();
        break;
      case 2:
        return Feeds();
        break;
      case 3:
        return NoticeBoard();
        break;
      case 4:
        return Ecm();
        break;
      case 5:
        return Settings();
        break;
      default:
        return NewsScreen();
        break;
    }
  }
}
