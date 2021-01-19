import 'package:flutter/material.dart';
import 'package:newsio/screens/home/page1.dart';
import 'package:newsio/screens/home/page2.dart';

import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    _scrollController = new ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                title: Text('Tab Controller Example'),
                pinned: true,
                forceElevated: boxIsScrolled,
                bottom: TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.home),
                      text: "home",
                    ),
                    Tab(icon: Icon(Icons.help), text: "help")
                  ],
                )),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [Page1(), Text("Tab 2")],
        ),
      )),
    );
  }
}
