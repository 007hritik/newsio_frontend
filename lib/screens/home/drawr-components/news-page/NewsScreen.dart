import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:newsio/screens/home/drawr-components/news-page/tab_pages/crypto.dart';
import 'package:newsio/screens/home/drawr-components/news-page/tab_pages/entertainment.dart';
import 'package:newsio/screens/home/drawr-components/news-page/tab_pages/finance.dart';
import 'package:newsio/screens/home/drawr-components/news-page/tab_pages/health.dart';
import 'package:newsio/screens/home/drawr-components/news-page/tab_pages/technology.dart';

import 'tab_pages/BreakingNews.dart';
import 'tab_pages/sports.dart';

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen>
    with SingleTickerProviderStateMixin {
  final List<Tab> newsTabs = [
    Tab(
      text: "Beaking News",
    ),
    Tab(text: "Finance"),
    Tab(
      text: "Entertainment",
    ),
    Tab(text: "Technology"),
    Tab(
      text: "Health",
    ),
    Tab(text: "Sports"),
    Tab(text: "Crypto")
  ];
  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: newsTabs.length);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("+", style: TextStyle(fontSize: 20)),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: TabBar(
          labelStyle: TextStyle(fontSize: 23),
          unselectedLabelColor: Colors.grey,
          unselectedLabelStyle: TextStyle(fontSize: 18),
          labelColor: Colors.black,
          isScrollable: true,
          controller: _tabController,
          tabs: newsTabs,
        ),
      ),
      body: Scaffold(
        body: TabBarView(
          controller: _tabController,
          children: newsTabs.map((Tab tab) {
            final String label = tab.text.toLowerCase();
            print(label);
            switch (label) {
              case "breaking news":
                return BreakingNews();
                break;
              case "finance":
                return Finance();
                break;
              case "entertainment":
                return Entertainment();
                break;
              case "technology":
                return Techonology();
                break;
              case "health":
                return Health();
                break;
              case "sports":
                return Sports();
                break;
              case "crypto":
                return Crypto();
              default:
                return BreakingNews();
                break;
            }
          }).toList(),
        ),
      ),
    );
  }
}
